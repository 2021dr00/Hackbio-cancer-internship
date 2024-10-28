<!--StartFragment-->

# **Analysis of TCGA Sarcoma data for age associated biomarkers in AYA patients and ML model development for classification**

   Authors (@slack): Vidhyavathy Nagarajan (@Vidhya2205), Ahmed Hasan (@Hasan), Nusrat Afrin (@Nusrat), Shreya Karandikar (@Shreya), Dharshana Rajkumar (@Dharshana), Maram Nhaili (@Maram), Mary Dhevanayagam (@Shanu), Henry Momanyi (@Henry)
   
   Link to GitHub Repository and Github Code - [****Link to code****](https://github.com/vidhya2205/TCGA-analysis_SARC_DEA_ML_stage3_HackBio/blob/main/Code/Code_BM%2BML.Rmd) **,** [****Link to Repo****](https://github.com/vidhya2205/TCGA-analysis_SARC_DEA_ML_stage3_HackBio).

   ## 1. **Introduction**

 Sarcoma is a rare and heterogeneous type of cancer of mesenchymal origin, accounting for 1% and 15% of all adult and childhood malignancies, respectively.<sup>1,2</sup> Due to the diversity of the subtypes and site of origin, their characterization and treatment are challenging.<sup>2,3</sup> Hence, identifying reliable biomarkers is crucial for improving early diagnosis, prognosis, and treatment response prediction in sarcoma patients. 

   Previous studies indicate that there is a significant difference in response to therapy, health-related quality index, and prognosis between adolescent-younger patients (AYA - age of diagnosis (AOD) 18-40 years) and older patients (OA - AOD >= 40).<sup>4,5,6,7,8</sup> Regarding the prognosis, there have been contradictory conclusions, some reporting that OA patients have a poorer prognosis,<sup>4,8</sup> while others supporting otherwise.<sup>9,10,11,12,13</sup> Hence, this study focuses on comparing the RNA-seq data of these two age groups to identify age-specific biomarkers to enhance patient characterization, therapeutic strategies, and prognosis.

   ## 2.**Methodology**
<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdXD1aGgz_5bou6xMt1GPnacDs1x14Wk8v1LaDVdFV4gmQ0uWehrYpvs5SxkROBz0NTTMqWVDjBS2Dh7sE3IIDUCrOZmKlpCS7yRLuhR1z9Hco1fLEPl3WZ-RqGD2hB00cc8TApU7ceO59_hVPOiMSP1ir1?key=xvw3JB3jr1ZpthYtl54CPw" width="400" height = "400">
  </kbd>
  </p>
  <p align = center><sup>Figure 3.1. Flow chart summarizing the data collection and preprocessing methodology </sup></p>

   ### **2.1. Biomarker Discovery using differential gene expression analysis (DGEA) and functional enrichment analysis (FEA)**

<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd34_ru_-mF3ecrZpoXSM_tfbQ53hfGrQWL4vJy0uvjyBIru6ZcjjgBJ3mlEWCoso4AJmJY8PjIBten5zzIvrorag_JuGH1tbv4H-1H9cKvFnSXK357S1GkGmQPp3AlouEHm-_OJ-UTXFskLEgGE0oKggI?key=xvw3JB3jr1ZpthYtl54CPw" width="400" height = "400">
  </kbd>
  </p>
  <p align = center><sup>Figure 3.2: Flow chart summarizing Biomarker discovery methodology </sup></p>
  
The dataset was derived from The Cancer Genome Atlas (TCGA) project, particularly the "TCGA-SARC" cohort (sarcoma samples). The samples were separated into two age groups: 18-40 and ≥40 years. Demographics of the groups are shown in [Supplementary\_information](https://github.com/vidhya2205/TCGA-analysis_SARC_DEA_ML_stage3_HackBio/blob/main/Report/Supplementary%20Information.md) Figure 1 The ones with missing or inaccurate age data were eliminated. Then, a random subset of 20 from each group was chosen for analysis. Unstranded gene expression data were normalized by gene length and read depth, and further quantile filtered (cutoff: 0.25) to eliminate low-expression genes. Differential expression analysis was done, with genes identified as upregulated, downregulated, or non-significant based on a log fold change (logFC) threshold of ±1.5 and FDR <0.005. Volcano plots and heat maps were created to show differentially expressed genes. Furthermore, functional enrichment analysis was conducted, and results of the top enriched pathways based on fold enrichment and FDR values were presented.

   ### **2.2. Machine Learning** 

<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeo0AXKHijBjIYyyDOp0R6IqxiGCB9dJD9Yq-TBsG-KtqVjE4kxn75wy1Fydf_w2Zj0PLkTwTJi9beN7beZETfqEy2rTQxRLBFoH3wqSmyZ5zBC50pzS-KxjAhlofbOlgOeYlVXdaxllOAvQIReAY2Z0ClV?key=xvw3JB3jr1ZpthYtl54CPw" width="400" height = "400">
  </kbd>
  </p>
 <p align = center><sup>Figure 3.3: Flow chart summarizing Machine learning methodology </sup></p>

Data was transposed and merged with the meta\_data to include the target variable ( age ) in a single file. Merged data was confirmed for any NAs or non-numeric values and was scaled. The top 1000 genes with variable expression levels were selected by applying standard deviation and organizing them in decreasing order. The data was again checked for missing values and then split into train( 70%) and test sets (30%). Data was classified based on age group by training Random Forest using the training set where we identified its accuracy based on precision, recall, and F1 scores. We ensured the model’s performance and precision using a confusion matrix and plotted this using an ROC curve. A 10-fold cross-validation was done using the k method. The top 20 biomarkers were plotted based on the Mean Decrease score given by the Random Forest model. A violin plot showed the significance of biomarkers in two different age groups.

## **3. Results and Discussion**

### **3.1. Biomarker discovery**

####       **3.1.1. Differential gene expression analysis (DGEA)**

Based on the DGEA, 2376 significant differentially expressed genes (DEG) were identified from the \~31,000 genes, between the two groups, using a log fold change and p-value cutoff. Of these, 848 and 1877 genes were up-regulated and down-regulated respectively, in the AYA patient group. The volcano plot (figure 4.1) shows the distribution of DEGs (\~31,000), with highly significant genes displayed in the top right (blue) and left (red) quadrants. Heatmap (figure 4.2) of the significant DEG (2376 genes), shows a pattern of dysregulation specific to each group as clustered by column colors (red-OA and blue-AYA patients). The section 2 in [Supplementary\_information](https://github.com/vidhya2205/TCGA-analysis_SARC_DEA_ML_stage3_HackBio/blob/main/Report/Supplementary%20Information.md) provides a detailed overview of the top dysregulated genes and their role in cancer.

<p align = center float="left">
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe_daCO5dEInyrn88GEDk04DNfX334MeHslBXyU4Q-QZ0FPX1Ffr9cGG-3v_h95-JaauvytnmiTSe-Oq3a9BcL7c4NwvHBKl0pbA0ZZL1iSahTCg8ll-Q6O77WF8ukFb0ZrG_grfGHXRnbkpEEPiUC7fNQs?key=xvw3JB3jr1ZpthYtl54CPw" width="390" height = "400">
  </kbd>
   <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXco4J90eU6x_p5rLabF80J43jSqiWJXQzyVgrPUGND3nnHbZUgV-S4wXqdqnN0KM6w_jJPftyStuyqHofw_2wbJ1Yqiu6FoXTxEkTOJsvSfsQXUBtMLlhOs8rSU4M6tYPOYCOUdq9IaSsRaaiyAh-wTGTU?key=xvw3JB3jr1ZpthYtl54CPw" width="390" height = "400">
  </kbd>
</p>
<p align = center>
  <sup>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fig 3.1. Volcano Plot &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fig 3.2. Heatmap of significantly up and down regulated genes
  </sup>
</p>

   ####       **3.1.2. Functional enrichment analysis (FEA)**

FEA of the upregulated and downregulated genes resulted in a set of pathways that are enriched  with the gene sets respectively. A total of 4686 pathways were identified by the analysis (2423 in Biological Process (BP), 1157 in Molecular Function (MF), 517 in Cellular components(CC) and 589 KEGG Pathways (KP))  for each gene set. From these the top enriched pathways are identified and plotted based on enrichment and p-value (FDR) as illustrated in Fig 3.3 and Fig. 3.4.  The section 3 in [Supplementary\_information](https://github.com/vidhya2205/TCGA-analysis_SARC_DEA_ML_stage3_HackBio/blob/main/Report/Supplementary%20Information.md) provides a detailed overview of the top enriched KEGG pathways and their role in cancer.
<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfh2bYXUy07vUSYVIP51GsL0B_5eqrRhIUTG37WkmT3CBOOs80FPygdjR-5nx1dfymP7xkVzebXQy03NU_urtO_ieN7aKMGArea16zs7DFUhSWds_tL9jmh1a2S9Wd0bycvRdx549EsmHVc8e80-Efr3W6j?key=xvw3JB3jr1ZpthYtl54CPw" width="700" height = "300">
  </kbd>
  </p>
 <p align = center><sup>Fig. 3.3. FEA of downregulated genes</sup></p>
    
<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe9ED8oDB2yYaQzGemw76B-Z_TpMnFYgY0GDgPww0OopTyxm8Cx4p8ArwRxZc-72Yi4afeEiDjHanebfrOZ1GnvJtrwaDoLgT61dQBn3ByG2eqB1E2YuaCIDy8m2UVbq232Ib7moycCaJ2q4DytuTD8qRDM?key=xvw3JB3jr1ZpthYtl54CPw" width="700" height = "300">
  </kbd>
  </p>
 <p align = center><sup>Fig. 3.4. FEA of upregulated  genes</sup></p>

   ### **3.2. Machine Learning**

   ####       **3.2.1. Random Forest Classification**

A Random Forest model trained on gene expression data concerning age used 100 trees and validated via the K-method showed an OOB error rate of 30% and class error of 35% and 25% for 18-40 and ≥40 age groups respectively.

   ####       **3.2.2. ROC Curve**

K-fold validation showing 100% accuracy, 1.0 value for sensitivity, specificity, Precision, Recall, and F1 score, R squared value of 0.737, and RMSE value of 0.737 at mtry=1000 and AUC of 1 for ROC curve shows model’s strong performance.
<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeU_UBiabBgpO57DU9JEZpfiM-1AEICXdESS2QKpsj387_ZPYAZaWFLAFalfey9i6lQ6xqInKRO5v5vwalxOLrjCvBbx-_Inlv7LRGtzHlkNKNVkB5PUtbvP5IcTPvvrUgyRrP2Zkyti4tsm6CnGrFVYqu1?key=xvw3JB3jr1ZpthYtl54CPw" width="700" height = "300">
  </kbd>
  </p>
 <p align = center><sup>Fig 4.2.3. Receiver operating characteristic (ROC) curve demonstrating the performance of Random Forest in Biomarker identification. The area under the curve (AUC) is 1.</sup></p>

 ####       **3.2.3. Top Variable Genes** 

**Age group:**

Several genes, such as ENSG00000173369 and ENSG00000124491, were more expressed in the ≥40 groups, while others, like ENSG00000173388 and ENSG00000119582, showed higher expression in the younger group. These differences suggest that these genes may serve as molecular markers for aging. The section 4 in[ Supplementary\_information](https://github.com/vidhya2205/TCGA-analysis_SARC_DEA_ML_stage3_HackBio/blob/main/Report/Supplementary%20Information.md) provides a detailed overview of the genes identified by the ML 

<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe-BgLQNZLIm4ek_YMwALylMVcHcQNEZMZpJIQzDdd5kI9drJXT6uqCNrD0XoNiqrWV23clLExsgSkHCUIEkXhqga6YwOMGshUSWHS7dMy53dycGd1KbuIemz04rjcMJIwDWd9B5kDf037kjADM6dDj24Q?key=xvw3JB3jr1ZpthYtl54CPw" width="700" height = "500">
  </kbd>
  </p>
 <p align = center><sup>Fig 4.2.2. Violin overlay box plot for different expression levels wrt age groups ( 0= 18-40, 1 = >=40) </sup></p>

**Mean Decrease Score via Random Forest:**
   
<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdqVBSYmkJFOlShcecTmXiaJ-54i8aPsHOZ7HKZu7LO_SjLee4ErPIJk8jzQFXHFWmoMMoTAfuClDKJdTtsohxUGXX_PGilNKdGpzfenK8ucgEwiJXrYSdrzH_32ax4x64GcejwZCgLm9tcto-XZ8mqP6g?key=xvw3JB3jr1ZpthYtl54CPw" width="700" height = "500">
  </kbd>
  </p>
 <p align = center><sup>Fig 4.2.1. MeanDecreaseGini scores from the Random Forest model to measure feature relevance. Genes at the bottom are the most important and so on.</sup></p>
    
The study highlights the effectiveness of gene expression profiles in distinguishing between younger and older age groups, with identified genes potentially linked to aging-related processes such as cell cycle regulation and apoptosis. The top 20 genes present a focused list for further exploration as biomarkers for age-related diseases or therapeutic targets.

   ### **4. Conclusion and Future Prospects**

In conclusion, the RNA-seq data analysis of AYA and OA sarcoma patients revealed significant gene expression variations associated with sarcoma pathogenesis. Many differently regulated genes have known cancer involvement, suggesting that they could serve as biomarkers for AYA sarcoma. However, further research is required to validate these findings and understand their unique functions in AYA patients. Additional studies may concentrate on validating those genes using both in vitro and in vivo, as well as investigating the role of lncRNAs in sarcoma progression. Again, the Random Forest model achieved perfect scores but may have overfitted due to the small sample size and high dimensionality. It has potential for age-based classification, but it requires additional validation and improvements such as independent data testing, higher sample sizes, dimensionality reduction, stratified k-fold cross-validation, and the exploration of simpler models.

   ### 5. References 

 1. von Mehren M, Kane JM, Agulnik M, Bui MM, Carr-Ascher J, Choy E, Connelly M, Dry S, Ganjoo KN, Gonzalez RJ, Holder A, Homsi J, Keedy V, Kelly CM, Kim E, Liebner D, McCarter M, McGarry SV, Mesko NW, Meyer C, Pappo AS, Parkes AM, Petersen IA, Pollack SM, Poppe M, Riedel RF, Schuetze S, Shabason J, Sicklick JK, Spraker MB, Zimel M, Hang LE, Sundar H, Bergman MA. Soft Tissue Sarcoma, Version 2.2022, NCCN Clinical Practice Guidelines in Oncology. J Natl Compr Canc Netw. 2022 Jul;20(7):815-833. doi: 10.6004/jnccn.2022.0035. PMID: 35830886; PMCID: PMC10186762.

   2. Burningham Z, Hashibe M, Spector L, Schiffman JD. The epidemiology of sarcoma. Clin Sarcoma Res. 2012 Oct 4;2(1):14. doi: 10.1186/2045-3329-2-14. PMID: 23036164; PMCID: PMC3564705.

   3. Holthuis EI, Heins MJ, van Houdt WJ, et al. Improving Diagnosis and Care for Patients With Sarcoma: Do Real-World General Practitioners Data and Prospective Data Collections Have a Place Next to Clinical Trials?. JCO Clin Cancer Inform. 2024;8:e2400054. doi:10.1200/CCI.24.00054

   4. Stricker E, Reed DR, Schabath MB, Sok P, Scheurer ME, Lupo PJ. Trends in Overall Survival among Patients Treated for Sarcoma at a Large Tertiary Cancer Center between 1986 and 2014. Cancers (Basel). 2023 Jan 14;15(2):514. doi: 10.3390/cancers15020514. PMID: 36672463; PMCID: PMC9856368.

   5. Liu H, Zhang H, Zhang C, Liao Z, Li T, Yang T, Zhang G, Yang J. Pan-Soft Tissue Sarcoma Analysis of the Incidence, Survival, and Metastasis: A Population-Based Study Focusing on Distant Metastasis and Lymph Node Metastasis. Front Oncol. 2022 Jul 7;12:890040. doi: 10.3389/fonc.2022.890040. PMID: 35875111; PMCID: PMC9303001.

   6. Xu Z, Wang L, Tu L, Liu Y, Xie X, Tang X, Luo F. Epidemiology of and prognostic factors for patients with sarcomatoid carcinoma: a large population-based study. Am J Cancer Res. 2020 Nov 1;10(11):3801-3814. Erratum in: Am J Cancer Res. 2021 Apr 15;11(4):1800-1802. PMID: 33294268; PMCID: PMC7716166.

   7. Drabbe C, Van der Graaf WTA, De Rooij BH, Grünhagen DJ, Soomers VLMN, Van de Sande MAJ, Been LB, Keymeulen KBMI, van der Geest ICM, Van Houdt WJ, Husson O. The age-related impact of surviving sarcoma on health-related quality of life: data from the SURVSARC study. ESMO Open. 2021 Feb;6(1):100047. doi: 10.1016/j.esmoop.2021.100047. Epub 2021 Jan 27. PMID: 33516150; PMCID: PMC7844567.

   8. Younger, E., Husson, O., Bennister, L. et al. Age-related sarcoma patient experience: results from a national survey in England. BMC Cancer 18, 991 (2018). <https://doi.org/10.1186/s12885-018-4866-8>

   9. Andrew EC, Lewin J, Desai J, Orme L, Hamilton A, Bae S, Zhu W, Nicolson S, Varghese LN, Mitchell CB, et al. Clinical Impact of Comprehensive Molecular Profiling in Adolescents and Young Adults with Sarcoma. Journal of Personalized Medicine. 2024; 14(2):128. <https://doi.org/10.3390/jpm14020128>

   10. Li, J., Ji, Y. Clinicopathological characteristics and genetic features of young and senior Ewing sarcoma patients. Diagn Pathol 19, 124 (2024). <https://doi.org/10.1186/s13000-024-01548-4>

   11. Bleyer A, Barr R, Hayes-Lattin B, et al. The distinctive biology of cancer in adolescents and young adults. Nat Rev Cancer. 2008;8(4):288-298. doi:10.1038/nrc2349

   12. Tricoli JV, Blair DG, Anders CK, Bleyer WA, Boardman LA, Khan J, Kummar S, Hayes-Lattin B, Hunger SP, Merchant M, Seibel NL, Thurin M, Willman CL. Biologic and clinical characteristics of adolescent and young adult cancers: Acute lymphoblastic leukemia, colorectal cancer, breast cancer, melanoma, and sarcoma. Cancer. 2016 Apr 1;122(7):1017-28. doi: 10.1002/cncr.29871. Epub 2016 Feb 5. PMID: 26849082; PMCID: PMC4803597.

   13. Wolfson JA, Kenzik KM, Foxworthy B, et al. Understanding Causes of Inferior Outcomes in Adolescents and Young Adults With Cancer. J Natl Compr Canc Netw. 2023;21(8):881-888. doi:10.6004/jnccn.2023.7056.

   <!--EndFragment-->
