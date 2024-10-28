# **Clustering of LGG using Expression Profiles and Identifying Expression-based Biomarkers in IDH wild-type LGG TCGA samples**

Authors (@slack): Vidhyavathy Nagarajan (@Vidhya2205), Ahmed Hasan (@Hasan), Nusrat Afrin (@Nusrat), Shreya Karandikar (@Shreya), Dharshana Rajkumar (@Dharshana), Maram Nhaili (@Maram), Mary Dhevanayagam (@Shanu) 

 Link to GitHub Repository and GitHub Code - [Link to Repo](https://github.com/marydhevanayagam/TCGA_LGG-IDH-expression-analysis-HackBio-stage-4), [Link to code](https://github.com/marydhevanayagam/TCGA_LGG-IDH-expression-analysis-HackBio-stage-4/blob/main/Code/RCode.Rmd) 

 ## 1. **Introduction** 

Diffuse gliomas are the most common brain tumor, accounting for approximately 60% of all primary tumors<sup>\[1]</sup>. LGG (low-grade glioma), includes grade 2 and 3 gliomas with a medium survival time of 7 years<sup>\[7]</sup>. The clinical significance of IDH status in LGG patients is substantial, influencing prognosis and treatment outcomes<sup>\[2,7,8]</sup>. _IDH_ mutations result in a hypermethylated DNA and histone profile, hence driving tumorigenesis in LGG IDH mutant patients<sup>\[7]</sup>. Further, IDH inhibitors in IDH mutant (_IDH1 or IDH2_ mutations) LGG patients have been effective in increasing the overall survival (OS) and delaying disease progression in the early stage<sup>\[3,4,9]</sup>. 

This project aims to provide insights into the expression-based alterations in IDH mutant and wild-type (WT) LGG, to explore the mechanism of action in the latter group. Further, clustering of the LGG groups based on expression profiles offers perspectives on the molecular subtypes for better stratification of patients. Finally, the findings are compared with the pan-glioma study conducted by Ceccarelli M _et al_., 2016<sup>\[10]</sup>.

## 2. **Description of the dataset** 

Gene expression data for 513 LGG samples (primary tumors with IDH status) were obtained from the TCGA database using the TCGAbiolinks package. Figure 2.1 illustrates the distribution of the dataset.

<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfrQlxWjswnZWXKcTLBqu-zKS3r2-HK5eAh_BDyRw0Gm1t_pB-wlv7mImiyGmuzV2GWZDKHM_pjsVhfihZM5AfoSn6Gzk9oKjtlJ51RoSVcjlpweLqE5nc3djKeQ975NuH37NTzPRSteq0QewEX_-0tRwGB?key=89BCI04Rsiwk571Sn0Mq1Q" width="700" height = "400">
  </kbd>
  </p>
  <p align = center><sup>Fig 2.1. Patient demographics</sup></p>

## 3. **Methodology** 

<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfxlPqWDE5xnPANvvuh8oPKk1HI8MnJw_91Xt7riKQ50b7jQmaaM5vmBUVafjlvoBRFcNtYHuIlDa6a12EOaL5NqSyqcu9Tu_T1bY1-je-pFwPDsuiEdRcrL48RW1QDIgt6IdVI7m2PrGihtqjbfGyTraiZ?key=89BCI04Rsiwk571Sn0Mq1Q" width="400" height = "400">
  </kbd>
  </p>
  <p align = center><sup>Fig 3. Pipeline for data acquisition and pre-processing</sup></p>

### 3.1. **Differential gene expression analysis (DGEA) and Functional enrichment analysis (FEA)** 

<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdoas8A7i-e-PZ434xoSseACYI-IWRkGyvTGS3zcOhVwHrm1lFjBru9zO12aj3G24ufEpeBgdcNPcUXJFHHYl3Xnqz6ZS8bmSlX_YExqICzE1MehTwt_CV97ahCTwxRUQZm5BmLCO9PWP3T_2HDSyDtXubn?key=89BCI04Rsiwk571Sn0Mq1Q"width="400" height = "400">
  </kbd>
  </p>
  <p align = center><sup>Fig 3.1. Pipeline for DEA and FEA</sup></p>

### 3.2. **Implementing and applying the K-means clustering** 

<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfp2LvEgTerotkIJ0nwUvVCBaLJm98LRiyFHK0JH2EIaGrw_3BejuAGgxBccrvmTFrHm_IXWvmY9umNhc_ybpDKZEh30kVtumbHrTH2js5njEQfVDZtZrs2DLqq2cu7_DYfLSxukhNQk1LTOxhflm9OaqM?key=89BCI04Rsiwk571Sn0Mq1Q" width="400" height = "400">
  </kbd>
  </p>
  <p align = center><sup>Fig 3.2. Pipeline for unsupervised K-means clustering</sup></p>

## 4.**Results** 

  ### 4.1. **Results of DGEA and FEA** 

  #### 4.1.1. **Differential gene expression analysis (DGEA)** 

DGEA identified 5916 significant differentially expressed genes (DEG) from the \~34,539 genes, between the two groups, using a log fold change and p-value cutoff. Of these, 4235 and 1681 genes were up-regulated and down-regulated respectively in the IDH W/T patient group. The volcano plot (Fig 4.1.1) shows the distribution of DEGs (\~34,539 genes), with highly significant genes displayed in the top right (red-downregulated genes) and left (red-upregulated genes) quadrants. Heatmap (Fig 4.1.2) of the top 5% significant up(212) and down(85) regulated significant genes (2376 genes), shows a pattern of dysregulation specific to each group as clustered by column colors (red-IDH-mutant and blue-IDH-WT patients). 

<p align = center float="left">
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeuSozo7bHH6dhTeg_vE-Qa6echGM0zZyJ19fhaY1sC-Potewuoguq1xYzy9wENJJ-sA7CQarp4ecd6yQjgOxb8d0VHMACCdGjpL4MCKG5ZNnC-YOx-Pixflb5nRwSEuFIqZYZ5rsoHqj9H66VKRVD6-QlR?key=89BCI04Rsiwk571Sn0Mq1Q" width="360" height = "400">
  </kbd>
   <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXelXYZl1yFBVBqBlkxuNIJ4uWApDrmNXMmUqIoXFUQC-v0RhNkIUO5pvlOsy9XJDkH62HcRMa-0lgCgwqtBBSbK74bMqfXaRHJuqt6-fX0aZJmGko7NRSZwUjrYMta88JFMP-Ic2hOZrIqLqp3-wFFRGjhs?key=89BCI04Rsiwk571Sn0Mq1Q" width="360" height = "400">
  </kbd>
</p>
<p align = center>
  <sup>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fig 4.1.1. Volcano plot &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fig 4.1.2. Heatmap of top 5% significantly up and down regulated genes

                                                                                                 
#### 4.1.2. **Functional enrichment analysis (FEA)** 

The top 5 GO enriched and KEGG pathways enriched with the 5916 DEA’s (4235 Up and 168 Down - regulated genes) are represented in figures 4.1.3 and 4.1.4 respectively.

<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf1l0ifAzEfjnBjdKaEGD4knQh10gFNflKLz_s89ImyB3t0qmKvxqfVheY_7qA_-blULLkr9Cx1A6R8fwafOE7-7bTV7OV_fhYmOpyfpD9B9muKIBjKtb0Ar2Xs8RYvxQ0LYcMCn4eUxd5GSwOaMkKqPwCy?key=89BCI04Rsiwk571Sn0Mq1Q" width="700" height = "400">
  </kbd>
  </p>
  <p align = center><sup>Fig 4.1.3. FEA of upregulated genes</sup></p>

<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeqyI_LhYXbSfv0WwTLh9MI6dCzuMXDIeGbuIAAfkkciIaL5GB1KrKw7UAcj3rP51tohwdiO2DNips3yo-F8hvXE9OUK8eBu5_3xkaKv-4Lffwu5lzMueth2j0W9YbQ2q-SFoR-N_9WstFStRwoHzu5ngs?key=89BCI04Rsiwk571Sn0Mq1Q" width="700" height = "400">
  </kbd>
  </p>
  <p align = center><sup> Fig 4.1.4. FEA of downregulated genes</sup></p>

### 4.2. **Results of the PCA and K-means, including visualizations and evaluation metrics as presented in the paper** 

K-means clustering via PCA showed two overlapping clusters. Samples in cluster 2 had less variability on the other hand points (samples) in cluster 1 were more spread out and had more variable expression levels. Upon extracting the samples IDs from both clusters we came to know that out of 180 samples, cluster 1 had the most IDH mutant samples 151 and 29 wild types on the other hand cluster 2 had the highest density of samples 333 out of which 268 were IDH mutant and 65 wild-type. This indicates the domination of the IDH mutant state in both clusters. The heatmap depicts low expression levels of IDH mutant state in both clusters indicating its domination in causing LGG (Fig. 4.2.3, 4.2.4).

<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdc-LrjzVg6LFhFjV-3A9I4vz48hC57lv2ZfghBGTQ8QsF0jlvIrtODSZZUcYucTk7A3oFk41gz7Uh_5LqDW66dnCX61u5IWSzZuwqh7yfosvHRXoSx1VcuXpD-oR8QoxGZ7jlxNvTgo5tKUnCXyeQOCeT3?key=89BCI04Rsiwk571Sn0Mq1Q" width="700" height = "400">
  </kbd>
  </p>
  <p align = center><sup> Fig 4.2.1.  PCA plot (Dots = Samples, overlapping samples PC2 (+12  -12),scattered dots across samples represent variable expression patterns) </sup></p> 

<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc0eULczPt4Um3PgEd_mLhlWIqa-ggb0xPryXeNv8dtst4ts7h00H554ILPAYnbGRBInPDq8NGBm7Rl8IonNYct4iM6XA5vHv9wxG0I00ipyEWEy8dmJxpflq1tXT3_TcSM2yqxkIiMvsUOS-D_7OfB5R8?key=89BCI04Rsiwk571Sn0Mq1Q" width="700" height = "400">
  </kbd>
  </p>
  <p align = center><sup> Fig 4.2.2. K-means clustering of PCA data (PC1, PC2)(Cluster 1 shows variable expression patterns, Cluster 2 shows less variability)</sup></p>

<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXczDG1OSxxWesqmYEHy4OVQ5siCvzb7XogUC7joYd-jbm0DU0CXHvUfUmJI13XtMlaZLC9DrHXHib_B2sJ9dh4hzy1xKO5Hx5WdMw3df6zJpX0Golus8quVqVabmsueACZfoZ0IMZFYcH5P5V6Bb4jZMfY7?key=89BCI04Rsiwk571Sn0Mq1Q" width="700" height = "400">
  </kbd>
  </p>
  <p align = center><sup> Fig 4.2.3. Heatmap of the expression profiles of 513 samples after filtering via variance (top 7%)</sup></p>

<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe5WMB0CmCLtBADgxQImR9BETNwQ9w88KJKfFdhtE_reV8TkC3zhMDQgrnwGPXRf8C1XVq_Z4N31iMEZuBbfZNL4sPuFo1XYqCc6hFsAm-ylaIAL8paIMxKSul0N59BE_Ur1vrGHmP6dvQfyAwWV1HhS6-e?key=89BCI04Rsiwk571Sn0Mq1Q" width="700" height = "400">
  </kbd>
  </p>
  <p align = center><sup> Fig 4.2.4. Heatmap of cluster means compared with filtered data for 2418 gene expression profiles of 513 samples </sup></p>

## 5.**Comparison with the findings reported in the target paper<sup>**\[10]**</sup>**

   ### 5.1. **DEA and FEA of LGG expression data**

In line with the findings of the study conducted by Ceccarelli M _et al_., 2016, there were more significant upregulated genes in the IDH W/T samples (Fig 4.1.2), indicating plausible epigenetic changes between the two groups. Previous studies indicate hypermethylation in the IDH-mutant samples indicating the role of epigenetic mechanisms<sup>\[10,11,7]</sup>. Further, the master transcription factors and their target genes previously<sup>\[10]</sup> found to be upregulated in IDH\_W/T were upregulated in the current study as well (Fig 5.1). This indicates the possible role of these transcription factors in driving tumor progression in IDH\_WT. Moreover, all of the transcription factors reported as upregulated in IDH\_WT in Ceccarelli M _et al_., 2016 also had higher expression in the IDH\_WT state (log2FC>0) in the current study, however only 6 of them were significant (log2FC>1)\[[SupplementaryData](https://github.com/marydhevanayagam/hackbio-stage-four-TCGA_LGG-analysis/blob/main/Data/DGEA_comparision%20with%20paper.xlsx), Fig 4.1.1]. Further, FEA revealed that the upregulated genes were enriched(n=87) in the sequence-specific DNA binding molecular function (Fig 4.1.3),  indicating the enrichment of transcription factors in the upregulated gene pool.

<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXejWw-bNkSxYVaBqOVEXfAEzJ9wi9rt6MRUSZ1AHZ26X4Wazy8Uw49j2pGYOsmnTNoQLpiRnUP7gYWwwVefADRBPAozNjAsQr08OnNlQcZXBpEINNQZLqSHbQFgKq7xCNkbPToYkHjDXe6intMbVU8GCnRU?key=89BCI04Rsiwk571Sn0Mq1Q"" width="600" height = "400">
  </kbd>
  </p>
  <p align = center><sup> Fig 5.1. Significantly upregulated TF’s identified in target study<sup>[10]</sup> and their expression in the current analysis </sup></p>

### 5.2 **Unsupervised Clustering** 

The study has identified four clusters LGr1-4: where LGr1-3 contains 82% of IDH1 or IDH2 mutations enriched for LGG while the LGr4 was exclusively IDH-wild-type (376 of 387, 97%) and enriched for GBM (399/476, 84%).

We worked on LGG gene expression dataset and based on the heatmap generated (Fig 4.2.4), we can distinguish two clusters where the first one, contains 180 samples (151 IDH mutant status out of 180, 83%) and the other one contains 333 samples (268 IDH mutant status out of 333, 80%).

This indicates 81.6% (419 of 513) of our samples have IDH mutant status correlating with the paper and indicating mixed IDH statuses in clusters. This finding confirms that LGG glioma is linked to IDH mutant status.

### 5.3 **Do you think we need more clusters based on newer datasets** 

While our current clustering supports the established link between IDH mutations and LGG, there are several reasons to consider further analysis. It could reveal subtypes with distinct gene expression patterns, possibly linked to variations in clinical behavior or treatment response. Analyzing more data (e.g., DNA methylation, and copy number variations) could enhance our understanding of LGG subtypes.

## 6. **Conclusion and insights gained from the analysis**
   
The identified features of expression-based unsupervised clustering can help categorize IDH-mutant LGG from IDH-W/T gliomas. The significant upregulation of TFs and enrichment of genes associated with sequence-specific DNA binding molecular function could provide insights into the molecular basis of tumorigenesis in the IDH-W/T subtype which has a lower survival compared to the IDH mutant subtype.


## **References**

1. Ostrom QT, Gittleman H, Liao P, Vecchione-Koval T, Wolinsky Y, Kruchko C, et al. CBTRUS Statistical Report: primary brain and other central nervous system tumors diagnosed in the United States in 2010–2014. Neuro Oncol. (2017) 19:v1–88. doi: 10.1093/neuonc/nox158 

2. Ohba S, Mukherjee J, See WL, Pieper RO. Mutant IDH1-driven cellular transformation increases RAD51-mediated homologous recombination and temozolomide resistance. Cancer Res. (2014) 74:4836–44. doi: 10.1158/0008-5472.CAN-14-0924

3. Mandel, J. J., Cachia, D., Liu, D., Wilson, C., Aldape, K., Fuller, G., & de Groot, J. F. (2016). Impact of IDH1 mutation status on outcome in clinical trials for recurrent glioblastoma. _Journal of neuro-oncology_, _129_, 147-154.

4. Jones PS, Carroll KT, Koch M, et al. Isocitrate Dehydrogenase Mutations in Low-Grade Gliomas Correlate With Prolonged Overall Survival in Older Patients. Neurosurgery. 2019;84(2):519-528. doi:10.1093/neuros/nyy149

5. 5\. Yao, Y., Chan, A. K., Qin, Z. Y., Chen, L. C., Zhang, X., Pang, J. C., Li, H. M., Wang, Y., Mao, Y., Ng, H. K., & Zhou, L. F. (2013). Mutation analysis of IDH1 in paired gliomas revealed IDH1 mutation was not associated with malignant progression but predicted longer survival. _PloS one_, _8_(6), e67421. https\://doi.org/10.1371/journal.pone.0067421

6. Ceccarelli, M., Barthel, F., Malta, T., Noushmehr, H., Iavarone, A., Verhaak, R., Sabedot, T., Salama, S., Murray, B., & Morozova, O. (n.d.). _Molecular Profiling Reveals Biologically Discrete Subsets and Pathways of Progression in Diffuse Glioma_.

7. Jiang, S., Zanazzi, G.J. & Hassanpour, S. Predicting prognosis and IDH mutation status for patients with lower-grade gliomas using whole slide images. Sci Rep 11, 16849 (2021). https\://doi.org/10.1038/s41598-021-95948-x

8. Claus EB, Walsh KM, Wiencke JK, et al. Survival and low-grade glioma: the emergence of genetic information. Neurosurg Focus. 2015;38(1):E6. doi:10.3171/2014.10.FOCUS12367

9. Schaff LR, Ioannou M, Geurts M, van den Bent MJ, Mellinghoff IK, Schreck KC. State of the Art in Low-Grade Glioma Management: Insights From Isocitrate Dehydrogenase and Beyond. Am Soc Clin Oncol Educ Book. 2024;44(3):e431450. doi:10.1200/EDBK\_431450

10. Ceccarelli M, Barthel FP, Malta TM, et al. Molecular Profiling Reveals Biologically Discrete Subsets and Pathways of Progression in Diffuse Glioma. Cell. 2016;164(3):550-563. doi:10.1016/j.cell.2015.12.028

11. Turcan S, Makarov V, Taranda J, Wang Y, Fabius AWM, Wu W, Zheng Y, El-Amine N, Haddock S, Nanjangud G, LeKaye HC, Brennan C, Cross J, Huse JT, Kelleher NL, Osten P, Thompson CB, Chan TA. Mutant-IDH1-dependent chromatin state reprogramming, reversibility, and persistence. Nat Genet. 2018 Jan;50(1):62-72. doi: 10.1038/s41588-017-0001-z. Epub 2017 Nov 27. PMID: 29180699; PMCID: PMC5769471.


<!--EndFragment-->
