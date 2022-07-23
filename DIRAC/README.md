# SysBioM001Paper/DIRAC
This directory includes the code for the Differential Rank Conservation (DIRAC; Eddy, J.A. et al. PLoS Comput. Biol. 2010) analyses used in our M001/M004 paper.  

## Code overview  
> The below figure numbers correspond to the current preprint version (DOI: https://doi.org/10.1101/2022.07.11.22277435).  

### 1. Code01_LC-M001-proteomics_DIRAC-GOBP.ipynb  
This Jupyter Notebook performed the DIRAC analysis of the Longevity Consortium (LC) M001 liver proteomics dataset using Gene Ontology Biological Process (GOBP) module set. This notebook was run on the Python kernel.  
Output:  
* Cleaned module metadata, which is incorporated into Supplementary Data 1 in R sub-notebook  
* DIRAC measures, which are used in statistical analysis (R sub-notebook)  
* Figure 2  
* Supplementary Figure 1  

### 2. Code02_LC-M001-proteomics_DIRAC-GOBP-test.ipynb  
This Jupyter Notebook performed stasitical analysis for the DIRAC results of the LC M001 liver proteomics dataset (GOBP module version); i.e., this is the sub-notebook of Code01_LC-M001-proteomics_DIRAC-GOBP.ipynb. This notebook was run on the R kernel.  
Output:  
* Supplementary Data 1  

### 3. Code03_LC-M001-proteomics_DIRAC-WGCNA.ipynb  
This Jupyter Notebook performed the DIRAC analysis of the LC M001 liver proteomics dataset using Weighted Gene Correlation Network Analysis (WGCNA; Langfelder, P. & Horvath, S. BMC Bioinform. 2008)-derived module set. This notebook was run on the Python kernel.  
Output:  
* Cleaned module metadata, which is incorporated into Supplementary Data 2 in R sub-notebook  
* DIRAC measures, which are used in statistical analysis (R sub-notebook)  
* Figure 3f–i  

### 4. Code04_LC-M001-proteomics_DIRAC-WGCNA-test.ipynb  
This Jupyter Notebook performed stasitical analysis for the DIRAC results of the LC M001 liver proteomics dataset (WGCNA module version); i.e., this is the sub-notebook of Code03_LC-M001-proteomics_DIRAC-WGCNA.ipynb. This notebook was run on the R kernel.  
Output:  
* Supplementary Data 2  

### 5. Code05_M001-related-transcriptomics_DIRAC-GOBP.ipynb  
This Jupyter Notebook performed the DIRAC analysis of the LC M001-related liver transcriptomics dataset (Tyshkovskiy, A. et al. Cell Metab. 2019). This notebook was run on the Python kernel.  
Output:  
* Cleaned module metadata, which is incorporated into Supplementary Data 5 in R sub-notebook  
* DIRAC measures, which are used in statistical analysis (R sub-notebook)  
* Figure 5a, h  
* Supplementary Figure 3a–d, g, j  

### 6. Code06_M001-related-transcriptomics_DIRAC-GOBP-test.ipynb  
This Jupyter Notebook performed stasitical analysis for the DIRAC results of the LC M001-related liver transcriptomics dataset; i.e., this is the sub-notebook of Code05_M001-related-transcriptomics_DIRAC-GOBP.ipynb. This notebook was run on the R kernel.  
Output:  
* Supplementary Data 5  

### 7. Code07_LC-M001-prot-vs-related-txn_DIRAC-GOBP-comparison.ipynb  
This Jupyter Notebook compared the DIRAC results of the LC M001 liver proteomics dataset with those of the LC M001-related liver transcriptomics dataset. This notebook was run on the Python kernel.  
Output:  
* Combined module metadata, which is incorporated into Supplementary Data 6 in R sub-notebook  
* Combined sample–mouse metadata, which is used in R sub-notebook  
* Cleaned tables of DIRAC measures, which are used in statistical analysis (R sub-notebook)  
* Figure 5b–d  

### 8. Code08_LC-M001-prot-vs-related-txn_DIRAC-GOBP-comparison-test.ipynb  
This Jupyter Notebook performed stasitical analysis for the DIRAC result comparisons between the LC M001 liver proteomics dataset and the LC M001-related liver transcriptomics dataset; i.e., this is the sub-notebook of Code07_LC-M001-prot-vs-related-txn_DIRAC-GOBP-comparison.ipynb. This notebook was run on the R kernel.  
Output:  
* Supplementary Data 6  

### 9. Code09_LC-M001-M004-proteomics_DIRAC-GOBP.ipynb  
This Jupyter Notebook performed the DIRAC analysis of the LC M004 liver proteomics dataset jointly with the LC M001 liver proteomics dataset. This notebook was run on the Python kernel.  
Output:  
* Cleaned module metadata, which is incorporated into Supplementary Data 7 in R sub-notebook  
* Combined sample–mouse metadata, which is used in R sub-notebook  
* DIRAC measures, which are used in statistical analysis (R sub-notebook)  
* Figure 5e–g  
* Supplementary Figure 3e, f, h, i  

### 10. Code10_LC-M001-M004-proteomics_DIRAC-GOBP-test.ipynb  
This Jupyter Notebook performed stasitical analysis for the DIRAC results of the LC M001 and M004 liver proteomics datasets; i.e., this is the sub-notebook of Code09_LC-M001-M004-proteomics_DIRAC-GOBP.ipynb. This notebook was run on the R kernel.  
Output:  
* Supplementary Data 7  

### 11. Code11_Arivale-proteomics_DIRAC-GOBP-CA10Group.ipynb  
This Jupyter Notebook performed the DIRAC analysis of the Arivale plasma proteomics dataset (Price, N.D. et al. Nat. Biotechnol. 2017; Earls, J.C. et al. J. Gerontol. A. Biol. Sci. Med. Sci. 2019) using chronological age-stratifed groups. This notebook was run on the Python kernel.  
Output:  
* Figure 6a–d  
* Supplementary Data 8 (ModuleMetadata, CA10Group_[sheet name suffix])  

### 12. Code12_Arivale-proteomics_DIRAC-GOBP-CA3DA5Group.ipynb  
This Jupyter Notebook performed the DIRAC analysis of the Arivale plasma proteomics dataset using chronological age and delta age-stratifed groups. This notebook was run on the Python kernel.  
Output:  
* Figure 6f, g  
* Supplementary Figure 4d  
* Supplementary Data 8 (CA3DA5Group_[sheet name suffix])  

### 13. Code13_Arivale-metabolomics_DIRAC-WGCNA-CA10Group.ipynb  
This Jupyter Notebook performed the DIRAC analysis of the Arivale plasma metabolomics dataset (Price, N.D. et al. Nat. Biotechnol. 2017; Earls, J.C. et al. J. Gerontol. A. Biol. Sci. Med. Sci. 2019) using chronological age-stratifed groups. This notebook was run on the Python kernel.  
Output:  
* Supplementary Figure 5c–f  
* Supplementary Data 9 (ModuleMetadata, CA10Group_[sheet name suffix])  

### 14. Code14_Arivale-metabolomics_DIRAC-WGCNA-CA3DA5Group.ipynb  
This Jupyter Notebook performed the DIRAC analysis of the Arivale plasma metabolomics dataset using chronological age and delta age-stratifed groups. This notebook was run on the Python kernel.  
Output:  
* Supplementary Figure 6c–e  
* Supplementary Data 9 (CA3DA5Group_[sheet name suffix])  

### 15. Code15_Arivale-proteomics_DIRAC-GOBP-CA10Group-permutation.ipynb  
This Jupyter Notebook performed permutation test for the DIRAC result of the Arivale plasma proteomics dataset (chronological age-stratifed group version). This notebook was run on the Python kernel.  
Output:  
* Supplementary Figure 4b  

## Requirements  
The following library/package versions were used and hence confirmed at least.  
* Python (version 3.7.6 or 3.9.7)  
* Python NumPy (version 1.18.5 or 1.21.3)  
* Python pandas (version 1.0.5 or 1.3.4)  
* Python SciPy (version 1.4.1 or 1.7.1)  
* Python statsmodels (version 0.11.1 or 0.13.0)  
* Python matplotlib (version 3.1.3 or 3.4.3)  
* Python seaborn (version 0.10.1 or 0.11.2)  
* Python venn (version 0.1.3)  
* Python goatools (version 1.2.3)  
* Python scikit-learn (version 1.0.1)  
* R (version 4.1.1)  
* R tidyverse (version 1.3.1)  
* R multcomp (version 1.4.19)  
* R openxlsx (version 4.2.5)  

## Log  
Last update on Jul 22, 2022  
* 2022-07-22 The directory was generated, the code files were uploaded, and README was edited.  
