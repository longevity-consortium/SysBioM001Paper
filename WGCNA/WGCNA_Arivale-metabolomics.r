#install necessary packages if required
#install.packages(c("matrixStats", "Hmisc", "splines", "foreach", "doParallel", "fastcluster", "dynamicTreeCut", "survival")) 
BiocManager::install((c("GO.db", "preprocessCore", "impute")))
BiocManager::install('WGCNA')

#load packages
library(robustHD)
# from https://gist.github.com/stevenworthington/3178163
ipak <- function(pkg){
    new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
    if (length(new.pkg))
        install.packages(new.pkg, dependencies = TRUE, repos = "http://cran.r-project.org")
    sapply(pkg, require, character.only = TRUE)
}

# usage
packages <- c("ggplot2",  "gplots", "lattice", "plyr", "reshape2",
              "RColorBrewer", "grid", "gridExtra", "igraph", "igraphdata")
suppressMessages(ipak(packages))

#load more packages
library(WGCNA);
options(stringsAsFactors = FALSE)
(.packages())

#load Arivale metabolomics data
LC_data = read.csv("mets_arivale_baseline_no_impute.csv");
# Take a quick look at what is in the data set:
dim(LC_data)

head(LC_data)

LC_data=as.data.frame(LC_data)
dim(LC_data)

rownames(LC_data)<-LC_data$public_client_id

num_df<-LC_data[,2:1297]
dim(num_df)

#remove metabolites with more than 50% missing values as well as samples with too many missing values (default parameters)
gsg = goodSamplesGenes(num_df, verbose = 3);
gsg$allOK
if (!gsg$allOK)
{
  # Optionally, print the gene and sample names that were removed:
  if (sum(!gsg$goodGenes)>0) 
     printFlush(paste("Removing genes:", paste(names(num_df)[!gsg$goodGenes], collapse = ", ")));
  if (sum(!gsg$goodSamples)>0) 
     printFlush(paste("Removing samples:", paste(rownames(num_df)[!gsg$goodSamples], collapse = ", ")));
  # Remove the offending genes and samples from the data:
  num_df = num_df[gsg$goodSamples, gsg$goodGenes]
}

# Choose a set of soft-thresholding powers
powers = c(c(1:10), seq(from = 11, to=15, by=1))
# Call the network topology analysis function
sft = pickSoftThreshold(num_df, powerVector = powers, verbose = 5,corOptions=c(use='p',method='spearman'), networkType='signed')
# Plot the results:
#sizeGrWindow(9, 5)
par(mfrow = c(1,2));
cex1 = 0.8;
# Scale-free topology fit index as a function of the soft-thresholding power
plot(sft$fitIndices[,1], -sign(sft$fitIndices[,3])*sft$fitIndices[,2],
     xlab="Soft Threshold (power)",ylab="Scale Free Topology Model Fit,signed R^2",type="n",
    main = paste("Scale independence"));
text(sft$fitIndices[,1], -sign(sft$fitIndices[,3])*sft$fitIndices[,2],
    labels=powers,cex=cex1,col="red");
# this line corresponds to using an R^2 cut-off of h
abline(h=0.80,col="red")
# Mean connectivity as a function of the soft-thresholding power
plot(sft$fitIndices[,1], sft$fitIndices[,5],
    xlab="Soft Threshold (power)",ylab="Mean Connectivity", type="n",
    main = paste("Mean connectivity"))
text(sft$fitIndices[,1], sft$fitIndices[,5], labels=powers, cex=cex1,col="red")

#based on the prior threshold search, we choose the one that best approximates a scale free topology while still maintaining high level of connectivity
#in the network
softPower =11;
#Generate an adjacency matrix
adjacency = adjacency(num_df, power = softPower,corOptions=list(use='p',method='spearman'),type = "signed" );

# Turn adjacency into topological overlap
TOM = TOMsimilarity(adjacency,TOMType = "signed");
dissTOM = 1-TOM

# Call the hierarchical clustering function
geneTree = hclust(as.dist(dissTOM), method = "average");
# Plot the resulting clustering tree (dendrogram)
#sizeGrWindow(12,9)
plot(geneTree, xlab="", sub="", main = "Gene clustering on TOM-based dissimilarity",
    labels = FALSE, hang = 0.04);

#We like large modules, so we set the minimum module size relatively high:
minModuleSize = 20;
# Module identification using dynamic tree cut:
dynamicMods = cutreeDynamic(dendro = geneTree, distM = dissTOM,
              deepSplit = 3, pamRespectsDendro = FALSE,
              minClusterSize = minModuleSize);
table(dynamicMods)

# Convert numeric lables into colors
dynamicColors = labels2colors(dynamicMods)
table(dynamicColors)
# Plot the dendrogram and colors underneath
#sizeGrWindow(8,6)
plotDendroAndColors(geneTree, dynamicColors, "Dynamic Tree Cut",
                  dendroLabels = FALSE, hang = 0.03,
                  addGuide = TRUE, guideHang = 0.05,
                  main = "Gene dendrogram and module colors")


# Calculate eigengenes
MEList = moduleEigengenes(num_df, colors = dynamicColors,nPC = 2)
MEs = MEList$eigengenes
# Calculate dissimilarity of module eigengenes
MEDiss = 1-cor(MEs);
# Cluster module eigengenes
METree = hclust(as.dist(MEDiss), method = "average");
# Plot the result
#sizeGrWindow(7, 6)
plot(METree, main = "Clustering of module eigengenes",
xlab = "", sub = "")
MEDissThres = .3
abline(h=MEDissThres, col = "red")


# Call an automatic merging function
merge = mergeCloseModules(num_df, dynamicColors, cutHeight = MEDissThres, verbose = 3)
# The merged module colors
mergedColors = merge$colors;
# Eigengenes of the new merged modules:
mergedMEs = merge$newMEs;
#pdf(file = "Plots/geneDendro-3.pdf", wi = 9, he = 6)
plotDendroAndColors(geneTree, cbind(dynamicColors, mergedColors),
c("Dynamic Tree Cut", "Merged dynamic"),
dendroLabels = FALSE, hang = 0.03,
addGuide = TRUE, guideHang = 0.05)
# Plot the cut line into the dendrogram

#dev.off()

#Set the diagonal of the dissimilarity to NA 
#diag(dissTOM) = NA;

#Visualize the Tom plot. Raise the dissimilarity matrix to a power  to bring out the module structure
#sizeGrWindow(7,7)
# Open a graphical window
myheatcol = colorpanel(225,'red',"orange",'lemonchiffon')
#, col=myheatcol
TOMplot(dissTOM^12, geneTree, as.character(mergedColors),main = "Network heatmap plot, all genes",color=myheatcol)

# Rename to moduleColors
moduleColors = mergedColors
# Construct numerical labels corresponding to the colors
colorOrder = c("grey", standardColors(50));
moduleLabels = match(moduleColors, colorOrder)-1;
MEs = mergedMEs;
head(MEs)
write.csv(MEs,'Module_eigenvalues_Arivale_mets_09_27_2021.csv')

# Further correlation of metabolites and eigenvalues for identification of hub mets
nGenes = ncol(num_df);
nSamples = nrow(num_df);
geneModuleMembership = as.data.frame(cor(num_df, MEs, use = "p"));
MMPvalue = as.data.frame(corPvalueStudent(as.matrix(geneModuleMembership), nSamples));

MMPvalue

mets=read.csv('met_names.csv')
mets$X0[1:10]

genes<-t(num_df)
d<-as.data.frame(moduleColors)
d$gene<-colnames(num_df)

write.csv(d,'module_assignments_arivale.csv')
