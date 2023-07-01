# SysBioM001Paper/DIRAC
This directory includes the main code for the differential rank conservation (DIRAC; Eddy, J.A. et al. PLoS Comput. Biol. 2010) analyses used in our M001/M004 paper.  

## Code overview  
> The below figure numbers correspond to the revised manuscript that is still under review (2nd revision).  

### 1. Code01_LC-M001-proteomics_DIRAC-GOBP.ipynb  
This Jupyter Notebook (with Python 3 kernel) performed the DIRAC analysis on the Longevity Consortium (LC) M001 proteomics dataset using Gene Ontology Biological Process (GOBP) module set.  
Output figures and tables:  
- Figure 2  
- Supplementary Figure 2  
- Supplementary Data 1  

### 2. Code02_LC-M001-proteomics_DIRAC-WGCNA.ipynb  
This Jupyter Notebook (with Python 3 kernel) performed the DIRAC analysis on the LC M001 proteomics dataset using Weighted Gene Correlation Network Analysis (WGCNA; Langfelder, P. & Horvath, S. BMC Bioinform. 2008)-derived module set.  
Output figures and tables:  
- Figure 3f–i  
- Supplementary Figure 3e, f  
- Supplementary Data 4  

### 3. Code03_M001-related-transcriptomics_DIRAC-GOBP.ipynb  
This Jupyter Notebook (with Python 3 kernel) performed the DIRAC analysis on the LC M001-related transcriptomics dataset (Tyshkovskiy, A. et al. Cell Metab. 2019) using GOBP module set.  
Output figures and tables:  
- Figure 4a  
- Supplementary Figure 4  
- Supplementary Data 5  

### 4. Code04_DIRAC-GOBP_proteomics-vs-transcriptomics.ipynb  
This Jupyter Notebook (with Python 3 kernel) compared the DIRAC results between the LC M001 proteomics and M001-related transcriptomics data.  
Output figures and tables:  
- Figure 4b–d, 5d, 5g  
- Supplementary Data 6  

### 5. Code05_LC-M001-M004-proteomics_DIRAC-GOBP.ipynb  
This Jupyter Notebook (with Python 3 kernel) performed the DIRAC analysis on the LC M001 and M004 proteomics datasets using GOBP module set.  
Output figures and tables:  
- Figure 5a–c, e, f  
- Supplementary Data 7  

### 6. Code06_LC-M001-proteomics_DIRAC-GOBP_sex-stratified.ipynb  
This Jupyter Notebook (with Python 3 kernel) assessed the overall distribution of module rank conservation index (RCI) with sex stratification.  
Output figures and tables:  
- Supplementary Figure 1a  

### 7. Code07_LC-M001-proteomics_DIRAC-GOBP_RCIcorrelation.ipynb  
This Jupyter Notebook (with Python 3 kernel) assessed the pairwise correlations of module RCI among the sample groups.  
Output figures and tables:  
- Supplementary Figure 1b  

## Requirements  
The following library/package versions were used and hence confirmed at least.  
* Python (version 3.9.7)  
* Python NumPy (version 1.21.3)  
* Python pandas (version 1.3.4)  
* Python SciPy (version 1.7.1)  
* Python statsmodels (version 0.13.0)  
* Python matplotlib (version 3.4.3)  
* Python seaborn (version 0.11.2)  
* Python venn (version 0.1.3)  
* Python goatools (version 1.2.3)  

## Log  
Last update on Jun 30, 2023  
* 2022-07-22 The directory was generated, the code files were uploaded, and README was edited.  
* 2023-06-02 The code files and README were updated based on the revised manuscript (1st revision).  
* 2023-06-30 Two code files were added and README (figure numbers) was updated based on the revised manuscript (2nd revision).  
