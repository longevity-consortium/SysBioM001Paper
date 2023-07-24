# SysBioM001Paper/WGCNA
This directory includes the main code for the weighted gene correlation network analysis (WGCNA; Langfelder, P. & Horvath, S. BMC Bioinform. 2008) used in our M001/M004 paper.  

## Code overview  
> The below figure numbers correspond to the published paper version.  

### 1. Code01_LC-M001-proteomics_WGCNA-module.ipynb  
This Jupyter Notebook (with R kernel) performed the module detection part of the WGCNA on the Longevity Consortium (LC) M001 proteomics dataset, followed by the enrichment analysis on the hub proteins of WGCNA-identified modules using Gene Ontology Biological Process (GOBP) annotations.  
Output figures and tables:  
- Figure 3d  
- Supplementary Figure 3c  
- Supplementary Data 2, 3  

### 2. Code02_LC-M001-proteomics_WGCNA-analysis.ipynb  
This Jupyter Notebook (with Python 3 kernel) performed the module analysis part of the WGCNA on the LC M001 proteomics dataset.  
Output figures and tables:  
- Figure 3b, c, e  
- Supplementary Figure 3a, b, d  
- Supplementary Data 2  

## Requirements  
The following library/package versions were used and hence confirmed at least.  
* R (version 4.1.1)  
* R tidyverse (version 1.3.1)  
* R WGCNA (version 1.71)  
* R clusterProfiler (version 4.2.2)  
* R enrichplot (version 1.14.2)  
* R readxl (version 1.4.2)  
* R openxlsx (version 4.2.5.2)  
* Python (version 3.9.7)  
* Python NumPy (version 1.21.3)  
* Python pandas (version 1.3.4)  
* Python SciPy (version 1.7.1)  
* Python statsmodels (version 0.13.0)  
* Python matplotlib (version 3.4.3)  
* Python seaborn (version 0.11.2)  

## Log  
Last update on Jul 24, 2023  
* 2022-07-22 The directory was generated, the code files were uploaded, and README was edited.  
* 2023-06-02 The code files and README were updated based on the revised manuscript (1st revision).  
* 2023-06-30 README (figure numbers) was updated based on the revised manuscript (2nd revision).  
* 2023-07-24 README was updated after publication.  
