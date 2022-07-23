# SysBioM001Paper/WGCNA
This directory includes the code for the Weighted Gene Correlation Network Analyses (WGCNA; Langfelder, P. & Horvath, S. BMC Bioinform. 2008) used in our M001/M004 paper.  

## Code overview  
> The below figure numbers correspond to the current preprint version (DOI: https://doi.org/10.1101/2022.07.11.22277435).  

### 1. WGCNA_LC-M001-proteomics.ipynb  
This Jupyter Notebook performed WGCNA for the Longevity Consortium (LC) M001 liver proteomics dataset. This notebook was run on the R kernel.  
> Of note, this code, originally written by Tomasz Wilmanski ( @twilmans ), was copied from the private GitHub repository (https://github.com/longevity-consortium/Sysbio_WGCNA.git) on Jul. 22, 2022.  

Output:  
* Assignment of each protein to a module within the correlation network, which was used in downstream analysis (Figure 3)  
* Eigengene values for each module, which were used in downstream analysis (Figure 3)  
* Intramodular connectivity of each protein within the Darkgreen module, which was used in downstream analysis (Figure 3)  

### 2. WGCNA_Arivale-metabolomics.r  
This R code performed WGCNA for the Arivale plasma metabolomics dataset (Price, N.D. et al. Nat. Biotechnol. 2017; Earls, J.C. et al. J. Gerontol. A. Biol. Sci. Med. Sci. 2019).  
> Of note, this code, written by Tomasz Wilmanski ( @twilmans ), was copied from the public GitHub repository (https://github.com/PriceLab/WGCNA-Metabolon-Code.git) on Jul. 22, 2022.  

Output:  
* Assignment of each protein to a module within the correlation network, which was used in downstream analysis (Supplementary Figure 5, 6)  
* Eigengene values for each module, which were not used directly in our M001/M004 paper  

## Requirements  
The following library/package versions were used and hence confirmed at least.  
* R (version 3.6.1)  
* R WGCNA (version 1.69)  
* R dynamicTreeCut (version 1.63-1)  
* R fastcluster (version 1.1.25)  
* R robustHD (version 0.6.1)  
* R perry (version 0.2.0)  
* R robustbase (version 0.93-5)  
* R ggplot2 (version 3.3.2)  

## Log  
Last update on Jul 22, 2022  
* 2022-07-22 The directory was generated, the code files were uploaded, and README was edited.  
