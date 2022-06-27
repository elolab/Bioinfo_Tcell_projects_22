
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
seff 332147

Job ID: 332147

Cluster: sever 

User/Group: aggode/aggode

State: COMPLETED (exit code 0)

Nodes: 1

Cores per node: 5

CPU Utilized: 01:33:59

CPU Efficiency: 19.80% of 07:54:35 core-walltime

Job Wall-clock time: 01:34:55

Memory Utilized: 38.80 GB

Memory Efficiency: 62.08% of 62.50 GB


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
Job ID: 334039

Cluster: server 

User/Group: aggode/aggode

State: COMPLETED (exit code 0)

Nodes: 1

Cores per node: 5

CPU Utilized: 01:54:52

CPU Efficiency: 16.18% of 11:50:05 core-walltime

Job Wall-clock time: 02:22:01

Memory Utilized: 11.27 GB

Memory Efficiency: 18.04% of 62.50 GB

<br>

---

<br>

