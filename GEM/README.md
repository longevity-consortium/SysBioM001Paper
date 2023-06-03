# SysBioM001Paper/GEM
This directory includes the main code for the mouse genome-scale metabolic model (GEM; Khodaee, S. et al. Sci. Rep. 2020) reconstruction analysis used in our M001/M004 paper.  

## Code overview  
> The below figure numbers correspond to the revised manuscript that is still under review.  

### 1. Code01_M001-related-transcriptomics_GEM-reconstruction.m  
This MATLAB code reconstructed the context-specific GEMs by integrating the Longevity Consortium (LC) M001-related liver transcriptomics dataset (Tyshkovskiy, A. et al. Cell Metab. 2019) with a mouse GEM (iMM1865; Khodaee, S. et al. Sci. Rep. 2020).  
> Of note, this code was written by Priyanka Baloni ([@pbaloni](https://github.com/pbaloni)) and copied from the private GitHub repository (https://github.com/longevity-consortium/MetabolicModeling.git) on Jul. 22, 2022.  

Output:  
* Context-specific GEMs, which were used in downstream analyses  

### 2. Code02_M001-related-transcriptomics_GEM-FVA.m  
This MATLAB code performed flux variability analysis (FVA) using the reconstructed context-specific GEMs.  
> Of note, this code was written by Priyanka Baloni ([@pbaloni](https://github.com/pbaloni)) and copied from the private GitHub repository (https://github.com/longevity-consortium/MetabolicModeling.git) on Jul. 22, 2022.  

Output:  
* Reaction flux values for each context-specific GEM, which were used in downstream analyses (Figure 6)  

### 3. Code03_M001-related-transcriptomics_GEM-flux.ipynb  
This Jupyter Notebook (with Python 3 kernel) compared the calculated flux values between the control and intervention groups.  
Output figures and tables:  
- Figure 6a, d  
- Supplementary Data 8  

### 4. Code04_M001-related-transcriptomics_GEM-enrichment.ipynb  
This Jupyter Notebook (with R kernel) performed the enrichment analysis on the potentially changed reactions using GEM subsystem annotations.  
Output figures and tables:  
- Figure 6b, c  
- Supplementary Data 8  

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
* R clusterProfiler (version 4.2.2)  
* R enrichplot (version 1.14.2)  
* R readxl (version 1.4.2)  
* R openxlsx (version 4.2.5.2)  

## Log  
Last update on Jun 3, 2023  
* 2022-07-22 The directory was generated, the code files were uploaded, and README was edited.  
* 2023-06-03 The code files and README were updated based on the revised manuscript.  
