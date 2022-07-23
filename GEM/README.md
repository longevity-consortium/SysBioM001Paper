# SysBioM001Paper/GEM
This directory includes the code for the genome-scale metabolic model (GEM) reconstruction analysis used in our M001/M004 paper.  

## Code overview  
> The below figure numbers correspond to the current preprint version (DOI: https://doi.org/10.1101/2022.07.11.22277435).  

### 1. GEM_reconstruction.m  
This MATLAB code reconstructed the context-specific GEMs by integrating the Longevity Consortium (LC) M001-related liver transcriptomics dataset (Tyshkovskiy, A. et al. Cell Metab. 2019) with a mouse GEM (iMM1865; Khodaee, S. et al. Sci. Rep. 2020).  
> Of note, this code, written by Priyanka Baloni, was copied from the private GitHub repository (https://github.com/longevity-consortium/MetabolicModeling.git) on Jul. 22, 2022.  

Output:  
* 78 context-specific GEMs, which were used in downstream analysis (Figure 4, Supplementary Figure 2)  

### 2. GEM_flux-variability-analysis.m  
This MATLAB code performed flux variability analysis (FVA) using the reconstructed context-specific GEMs.  
> Of note, this code, written by Priyanka Baloni, was copied from the private GitHub repository (https://github.com/longevity-consortium/MetabolicModeling.git) on Jul. 22, 2022.  

Output:  
* Reaction flux values for each context-specific GEM, which were used in downstream analysis (Figure 4, Supplementary Figure 2)  

### 3. Code01_M001-related-transcriptomics_GEM-flux.ipynb  
This Jupyter Notebook compared the calculated maximum flux values between the context-specific GEMs (i.e., sample groups). This notebook was run on the Python kernel.  
Output:  
* Cleaned flux data, which was used in stasitical analysis (R sub-notebook)  
* Cleaned sample–model metadata, which was used in R sub-notebook  
* Cleaned reaction metadata, which was incorporated into Supplementary Data 3 in R sub-notebook  
* Figure 4a–d  
* Supplementary Figure 2c–f  

### 4. Code02_M001-related-transcriptomics_GEM-flux-test.ipynb  
This Jupyter Notebook performed stasitical analysis for the flux comparisons between sample groups; i.e., this is the sub-notebook of Code01_M001-related-transcriptomics_GEM-flux.ipynb. This notebook was run on the R kernel.  
Output:  
* Supplementary Data 3  

### 5. Code03_M001-related-transcriptomics_GEM-subsystem-enrichment.ipynb  
This Jupyter Notebook performed enrichment analysis for the GEM subsystems in the significantly flux-changed reactions. This notebook was run on the R kernel.  
Output:  
* Figure 4e  
* Supplementary Figure 2a, b, g  
* Supplementary Data 4  

## Requirements  
The following library/package versions were used and hence confirmed at least.  
* MATLAB (R2019a)  
* COBRA toolbox (version 3.0)  
* Gurobi optimizer (academic license; version 7.5)  
* IBM CPLEX (academic license; version 12.7.1)  
* Python (version 3.9.7)  
* Python NumPy (version 1.21.3)  
* Python pandas (version 1.3.4)  
* Python SciPy (version 1.7.1)  
* Python statsmodels (version 0.13.0)  
* Python matplotlib (version 3.4.3)  
* Python seaborn (version 0.11.2)  
* Python venn (version 0.1.3)  
* Python scikit-learn (version 1.0.1)  
* R (version 4.1.1)  
* R tidyverse (version 1.3.1)  
* R dunn.test (version 1.3.5)  
* R openxlsx (version 4.2.5)  
* R clusterProfiler (version 4.2.2)  
* R enrichplot (version 1.14.2)  
* R readxl (version 4.2.5)  

## Log  
Last update on Jul 22, 2022  
* 2022-07-22 The directory was generated, the code files were uploaded, and README was edited.  
