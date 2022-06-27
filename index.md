## Bioinformatics for T-Cell immunology

<br>

---

<br>

### Table of contents

   + [Overview](#overview)

   + [Projects](#projects)

   + [Outline](#outline)
   
   + [Target audience](#target-audience)

   + [Pre-requisites](#pre-requisites)
   
   + [Project lead](#project-lead)

   + [Disclaimer](#disclaimer)

   + [Acknowledgements](#acknowledgements)


<br>

---

<br>

### Overview

This site intends to be a repository for the [group projects](#projects) given during the course [Bioinformatics for T-Cell immunology](https://www.ebi.ac.uk/training/events/bioinformatics-t-cell-immunology-2022/), 11-15/07/2022, at EMBL-EBI, Cambridge, UK. 

The [projects](#projects) use publicly available and realist data sets of **T cells** to perform common tasks in the analysis of single-cell-RNA-seq data: **integration**, **clustering** and **differential gene expression**. The [projects](#projects) focus more on the demonstration of key methodological aspects on the analysis of single-cell data rather than addressing a particular biological question(s).   

<br>

---

<br>

### Projects

This repository hosts three standalone/independent projects: 

   1. _Integration of single-cell data from patients developing arthritis arAE under ICI_
   
      + _main goal_: comparing the integration of scRNA-seq data by batch with [Seurat RPCA](https://satijalab.org/seurat/articles/integration_rpca.html) ([Hao et al., 2021](https://www.sciencedirect.com/science/article/pii/S0092867421005833?via%3Dihub)) _versus_ [Scanorama](https://github.com/brianhie/scanorama) ([Hie et al., 2019](https://www.nature.com/articles/s41587-019-0113-3)) using the cell type annotations as 'ground-truth'. 
      
      + _learning objectives_: preprocessing/filtering, normalization, finding HVG, scaling, dimensional reduction, clustering and integration of single-cell data with `Seurat`. Integration of single-cell data with `Scanorama`.   
      
      + _publication_: [Kim et al., 2022](https://www.nature.com/articles/s41467-022-29539-3)
      
      + _data_: GEO [GSE173303](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE173303)
   
      + _R markdown notebook_: `01_integration_arthritis_arAE_ICI.Rmd` 
      
      + _vignette_: [01_integration_arthritis_arAE_ICI.html](https://elolab.github.io/Bioinfo_Tcell_projects_22/pages/01_integration_arthritis_arAE_ICI.html)
      
      + _estimated computing time_: 01:34:55
      
      + _estimated memory_: 38.80 GB
      
   2. _Fine-grained clustering of single-cell data of melanoma immune/stroma cells_
   
      + _main goal_: comparing the clustering results of scRNA-seq data obtained with _graph-clustering_ **SNN** plus **Louvain** algorithms implemented in [Seurat](https://satijalab.org/seurat) ([Hao et al., 2021](https://www.sciencedirect.com/science/article/pii/S0092867421005833?via%3Dihub)) _versus_ **Iterative Clustering Projection** algorithm implemented in [ILoReg](https://bioconductor.org/packages/release/bioc/html/ILoReg.html) ([Smolander et al., 2021](https://doi.org/10.1093/bioinformatics/btaa919)). 
      
      + _learning objectives_: clustering single-cell data with the _graph-based clustering_ method implemented in `Seurat` (**SNN** plus **Louvain** algorithms) and with the _Iterative Clustering Projection_ algorithm implemented in `ILoReg`.   
      
      + _publication_: [Jerby-Arnon et al., 2018](https://www.sciencedirect.com/science/article/pii/S0092867418311784?via%3Dihub)
      
      + _data_: GEO [GSE115978](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE115978)
   
      + _R markdown notebook_: `02_clustering_seurat_vs_iloreg.Rmd` 
      
      + _vignette_: [02_clustering_seurat_vs_iloreg.html](https://elolab.github.io/Bioinfo_Tcell_projects_22/pages/02_clustering_seurat_vs_iloreg.html)

      + _estimated computing time_: 00:39:18
      
      + _estimated memory_ (using 10 threads): 6.84 GB

   3. _Differential gene expression of stimulated CD4+ T single-cell data with single-cell and pseudobulk methods_

      + _main goal_: comparing differential genes expression results obtained with _single-cell_ ([Wilcox](https://en.wikipedia.org/wiki/Mann%E2%80%93Whitney_U_test) implemented in [Seurat](https://satijalab.org/seurat) - [Hao et al., 2021](https://www.sciencedirect.com/science/article/pii/S0092867421005833?via%3Dihub)) _versus_ _pseudobulk_ ([ROTS](https://bioconductor.org/packages/release/bioc/html/ROTS.html) - [Suomi et al., 2017](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005562)) methods against the DGE results of the 'ground-truth' _bulk-RNA-seq_ data. 
      
      + _learning objectives_: proprities of single-cell data _versus_ bulk. Differential gene expression with single-cell versus pseudobulks.   
      
      + _publication_: [Cano-Gamez et al., 2020](https://www.nature.com/articles/s41467-020-15543-y)
      
      + _data_: [www.opentargets.org](https://www.opentargets.org/projects/effectorness)
   
      + _R markdown notebook_: `03_pseudobulks_dge_rots_cd4_act.Rmd` 
      
      + _vignette_: [03_pseudobulks_dge_rots_cd4_act.html](https://elolab.github.io/Bioinfo_Tcell_projects_22/pages/03_pseudobulks_dge_rots_cd4_act.html)

      + _estimated computing time_: 02:22:01
      
      + _estimated memory_: 11.27 GB
      
<br>

The course material for these projects can be found in the following github repository (under the folder `projects`): [https://github.com/elolab/Bioinfo_Tcell_projects_22](https://github.com/elolab/Bioinfo_Tcell_projects_22)

Download the github repository by typing in the terminal: 
```git clone https://github.com/elolab/Bioinfo_Tcell_projects_22.git``` 

or by clicking under the [Download ZIP](https://github.com/elolab/Bioinfo_Tcell_projects_22/archive/refs/heads/main.zip) icon (decompress the folder).

The `README.md` markdown text file under the folder `projects` explains the directory structure. The **project notebooks** are under the folder `reports`. 
The `conda` environment yaml file at `projects/workflow/envs/tools.yaml` describes the list of software packages and the respective versions required to reproduce the project notebooks. Such can be installed with `conda` (or `mamba`) by doing (from the `root` directory `projects` folder): `conda env create -f workflow/envs/tools.yaml` (you may need to add the tag `-name: course` to the beginning of the yaml file).  

<br>

---

<br>

### Outline

Each group just pick one of the projects. 

The timeline for one project is highlighted below: 

   1. 30min for project introduction on day 2 
   
   2. 1.5h for group project work on day 3
   
   3. 1.5h for group project work on day 4 
   
   4. 1.5 h for group project work and wrap-up on day 5
   
   5. 1h for the group presentation (all groups) on day 5

<br>

---

<br>

### Target audience	

Scientists who want to learn key concepts revolving around the analysis of _single-cell-RNA-seq_ data such as: **integration**, **clustering** and **differential gene expression**.

<br>

---

<br>

### Pre-requisites

The course projects are delivered as [R markdown](https://rmarkdown.rstudio.com/) notebooks which can be reproduced with basic-level knowledge of *R programming* language. There are a few lines of *python* too being called directly from `R` using [reticulate](https://rstudio.github.io/reticulate/). The participants may benefit from medium-level knowledge of `R` to explore more in-depth some analyses and familiarity with [Seurat](https://satijalab.org/seurat/) and [SingleCellExperiment](https://bioconductor.org/books/3.14/OSCA.intro/the-singlecellexperiment-class.html) objects and functionality. 

<br>

---

<br>

### Project lead

**António Sousa** ([ENLIGHT-TEN+](http://www.enlight-ten.eu/) PhD student at the [Medical Bioinformatics Centre](https://elolab.utu.fi/), TBC, University of Turku & Åbo Akademi) 

Contact: <aggode@utu.fi>

<br>

---

<br>

### Disclaimer

>All the data used along each project notebook was made public elsewhere by the respective authors and it has been properly referenced in each project (proper links were provided along each project notebook). The data and tools chosen to address the topic(s) of each project notebook reflect only my personal experience/knowledge and they were chosen to highlight particular aspects that I consider important. The results generated and explored within each project notebook have just the general purpose of give a brief introduction to the topics addressed in each project and do not aim, at any point, to reproduce or question neither the approaches taken nor the main findings published along with the data sets used herein.

<br>

---

<br>

### Acknowledgements

>This project has received funding from the European Union's Horizon 2020 research and innovation programme under the Marie Skłodowska-Curie grant agreement No.: 955321

<br>

![](figs/logos.png)

<br>

<br>

---

<br>

Shield: [![CC BY 4.0][cc-by-shield]][cc-by]

This work is licensed under a
[Creative Commons Attribution 4.0 International License][cc-by].

[![CC BY 4.0][cc-by-image]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg
