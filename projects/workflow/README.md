
<br>

---

<br>

Project folder: workflow

Description: Test course data analyses using Snakemake workflow

Author(s): António Sousa (e-mail: aggode@utu.fi)

Date: 11/06/2022

Archived date: 

<br>

---

<br>

### Content:

<br>

   + data: data folder used in this course

   + envs: config yaml files with conda software environment instructions

   + reports: Rmd notebooks reports

   + results: results produced during the analyses

   + scripts: helper scripts/functions used in the analyses

   + slurm: Slurm configuration files

   + logs: log files produced during the analyses

   + smk_logs: Snakemake log files

   + Snakefile: main Snakemake file with rules to run workflow

<br>

---

<br>

### Run analysis

<br>

#### Activate Snakemake (see how to [install](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html))
conda activate snakemake

#### Run the Rmd notebook: '01_integration_arthritis_arAE_ICI.Rmd'
time snakemake --profile slurm --verbose reports/01_integration_arthritis_arAE_ICI.html &> smk_logs/smk`date +%H.%M.%S_%m_%d_%Y.log`; echo $?;

#### Run the Rmd notebook: '02_clustering_seurat_vs_iloreg.Rmd'
time snakemake --profile slurm --verbose reports/02_clustering_seurat_vs_iloreg.html &> smk_logs/smk`date +%H.%M.%S_%m_%d_%Y.log`; echo $?;

#### Run the Rmd notebook: '03_pseudobulks_dge_rots_cd4_act.Rmd'
time snakemake --profile slurm --verbose reports/03_pseudobulks_dge_rots_cd4_act.html &> smk_logs/smk`date +%H.%M.%S_%m_%d_%Y.log`; echo $?;


<br>

---

<br>

### Resources 

<br>

#### Resources allocated for the analysis: '01_integration_arthritis_arAE_ICI.Rmd'
Job ID: 335797

Cluster: tamatoa

User/Group: aggode/aggode

State: COMPLETED (exit code 0)

Nodes: 1

Cores per node: 5

CPU Utilized: 00:24:39

CPU Efficiency: 18.16% of 02:15:45 core-walltime

Job Wall-clock time: 00:27:09

Memory Utilized: 21.61 GB

Memory Efficiency: 73.77% of 29.30 GB

#### Resources allocated for the analysis: '02_clustering_seurat_vs_iloreg.Rmd'
Job ID: 333963

Cluster: server

User/Group: aggode/aggode

State: COMPLETED (exit code 0)

Nodes: 1

Cores per node: 12

CPU Utilized: 00:05:32

CPU Efficiency: 1.17% of 07:51:36 core-walltime

Job Wall-clock time: 00:39:18

Memory Utilized: 6.84 GB

Memory Efficiency: 10.94% of 62.50 GB


#### Resources allocated for the analysis: '03_pseudobulks_dge_rots_cd4_act.Rmd'
Job ID: 335799

Cluster: tamatoa

User/Group: aggode/aggode

State: COMPLETED (exit code 0)

Nodes: 1

Cores per node: 5

CPU Utilized: 01:41:08

CPU Efficiency: 15.63% of 10:47:00 core-walltime

Job Wall-clock time: 02:09:24

Memory Utilized: 11.27 GB

Memory Efficiency: 72.14% of 15.62 GB

<br>

---

<br>

