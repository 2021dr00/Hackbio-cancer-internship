<!--StartFragment-->


# Supplementary Information

## 1. Patient Demographics

Supplementary Figure 1 illustrates the differences in demographics (sarcoma subtypes, gender) between the two age groups compared in the study. There is an uneven distribution of the patient's primary diagnosis (subtypes) and gender. 

The OA (>=40 age group) includes Dedifferentiated liposarcoma (4 samples), Fibromyxosarcoma (3 samples), Leiomyosarcoma, NOS (8 samples), Undifferentiated sarcoma (5 samples), with over 2:3 female: male ratio.

The AYA (18-40 age group) includes  Aggressive fibromatosis (1 sample), Dedifferentiated liposarcoma (3 samples), Leiomyosarcoma, NOS (4 samples), Liposarcoma, well-differentiated (1 sample), Malignant peripheral nerve sheath tumor (5 samples), Synovial sarcoma, biphasic (1 sample), Synovial sarcoma, NOS (2 samples) and Synovial sarcoma, spindle cell (3 samples) subtypes, with 3:2 female: male ratio.  
<p align = center>
  <kbd>
<img src= "https://lh7-rt.googleusercontent.com/docsz/AD_4nXeuGX4HOBPBGPXpS6WHKBLcRQ_y-fwjAPiOUN07QAdqEaWa5ANbkHCTlEFeUwV9NfD1vPH4vbrE7VUDAyQgcqYLJge-ayKKsp8oH6JRS61I8XwGGicC2vDYV6xos-HR_A2whsd6xvpVIr24h0nNogzUpCUf?key=HXlJRcxwxxfPeZ62iFJQUw" width="800" height = "300">
  </kbd>
<sup> Supplementary Figure -1. Patient data distribution between the 2 age groups </sup>
</p>

 ## **2. Significant dysregulated genes identified by DGEA** 

  Though there are contradicting studies, some prior studies have shown that AYA sarcoma patients are associated with a worse prognosis compared to OA patients.<sup>1,2,3,4,5</sup> Along similar lines, the identified protein-coding differentially regulated genetic biomarkers are closely related to cancer proliferation, advanced stages, and poor prognosis as explained in detail below.

   Among the top 5 novel upregulated genes (based on logFC) in the AYA group, there were 2 lncRNAs (ENSG00000287397 and ENSG00000241168) and 3 protein-coding genes (_GABRA6_,  _NANOGNB_, _PPP4R3C_). _GABRA6_ gene encodes for a subunit of the _GABA_ receptor and is involved in the GABAergic signaling pathway linked to tumor progression and is explored as a therapeutic target in multiple cancers.<sup>6,7,8</sup> Specifically, in the chondrosarcoma cell line, an inhibitor of the GABAergic signaling pathway has successfully attenuated proliferation.<sup>8</sup> _PPP4R3C_, a regulatory subunit of _PPP4C_,<sup>9</sup> which is associated with homologous recombination and Wnt signaling pathways, has a well-established role in cancer.<sup>10,11</sup> Further, this gene has been reported to be a potential diagnostic biomarker for its high expression in several tumors including sarcoma, and is associated with metastasis and poor prognosis in several other cancers.<sup>11,12</sup> 

   The top 5 downregulated genes included 1 lncRNA (ENSG00000286564), and 4 protein-coding genes (_SFTPA1, SFTPB, ADIPOQ, OTX2_). Among these, _SFTPA1, SFTPB, and ADIPOQ_ are found to be downregulated in cancers and their overexpression is associated with good prognosis in some cancers. While _SFTPA1_ and _SFTPB_ are mainly involved in immune response in lung cancer cells, and their downregulation is associated with cancer progression and associated with aggressive growth, _ADIPOQ_ is associated with inducing autophagic cell death in breast cancer.<sup>13,14,15</sup> Though limited studies are available on the role of these genes in sarcoma and cancer in general, these serve as potential biomarkers.

## 3. Significant enriched pathways identified by FEA

Transcriptional Regulatory Network in Embryonic Stem Cells (TRNES), Calcium Signaling, Glutamate Receptor Signaling, Cellular Effects of Sildenafil, and GABA Receptor Signaling are the top 5 enriched KEGG pathways in downregulated genes FEA in AYA sarcoma patients. The TRNES pathway, Glutamate Receptor Signaling, Calcium Signaling, and GABA Receptor Signaling are pathways associated with therapy resistance in sarcoma,16 TCA cycle (in osteosarcoma),17,18 immune-associated pathways in cancer (including osteosarcoma),19 and proliferation of chondrosarcoma20 respectively. This suggests that dysregulation of genes in these pathways can in turn impact multiple mechanisms in cancer and have to be studied in detail.

The top 5 enriched KEGG pathways in upregulated genes FEA includes, Granulocyte Adhesion and Diapedesis, Agranulocyte Adhesion and Diapedesis, T Helper Cell Differentiation, Altered T Cell and B Cell Signaling in Rheumatoid Arthritis, Pathogenesis of Multiple Sclerosis. Of these, Granulocyte & Agranulocyte Adhesion and Diapedesis pathways are associated with innate immune response and cancer cell migration,<sup>21,22</sup> while the T Helper Cell Differentiation pathway is associated with active immune response and controls the tumor necrosis process.<sup>23</sup> Additionally, most of the highlighted pathways in the BP term are also associated with immune response (Fig 4.4). 

These results suggest that the majority of upregulated genes in AYA sarcoma patients are associated with immune response pathways, and studying them in detail could provide insights into the effectiveness of immunotherapy. Additionally, multiple retrospective studies have shown that though immunotherapy is emerging in treatment of sarcoma, it's not very effective and requires more advancement.<sup>24,25,26</sup>
   
## 4. Significant genes (features) identified by ML model

_C1QB_ (ENSG00000173369) activates the complement pathway and creates an immunosuppressive environment that allows cancer cells to proliferate and evade immune detection.<sup>27</sup> Determining whether C1QB is largely tumor-promoting or tumor-suppressive in sarcomas is difficult due to the dual nature of the complement system in cancer.<sup>28</sup> 

_CD74_ (ENSG00000019582) is an invariant chain of HLA class II chaperones.With a high expression in pediatric osteosarcoma patients without metastases, _CD74_ has been found associated with immune infiltrations and immune checkpoint inhibitors.<sup>29</sup> AYA patients should be examined as they have high expression of it in our study. 
   
## 5. Comparison of significant genes identified by ML model and DGEA

Supplementary Figure 2 indicates the difference between the significant genes identified by the ML model and DGEA. It is seen that the significant genes identified by the ML model fall under the nonsignificant category by DGEA due to the stringent cutoff of log fold change(logFC) threshold of ±1.5  and FDR < 0.005. This may be due to the use of SD values for feature selection. The results may differ for other feature selection methods like Boruta and RFE.
<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc3jLTYU3Tz52Bzoi6Hzo1_cqKYW1C-U9Lp2XU7_WM78wq0vSCWw_8GceT3TYyupO9PkLpJ8ysi_jHiYzCDMrTcQ1x9YKcn2vK3R-Alq_W00-JrGig_J7LWf3CtR0iFwJohHZZ3PijfnFEkOE0YTYdFDRDY?key=HXlJRcxwxxfPeZ62iFJQUw" width="500" height = "400">
  </kbd>
  </p>
  <p align = center><sup>Supplementary Figure 2. Volcano plot comparing the significant genes identified by DGEA and ML model </sup> </p>
  
## 6. Visual Representation of the biomarker findings

The ML model, DGEA, and FEA have identified a set of significant dysregulated genes that have some established role in cancer. Significant biomarkers and their associated pathways in AYA and OA patient groups are illustrated in supplementary figure 3.
<p align = center>
  <kbd>
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfAKzUFFzuYsHySSqQwUzWFEMU3Nj8xhxJHLYguiTngMOxQ4PAmbp9jfGrc8oLfEYSuf0meP6k-W5ftlMNANzmYHpEZGqUhLx1yWcxsBOmItkYRr371oER6lRMuRRS78WvQnrbdLI9Vxtf67fsG3DmBwQxO?key=HXlJRcxwxxfPeZ62iFJQUw" width="500" height = "400">
    </kbd>
  </p>
  <p align = center><sup>Supplementary Figure 3. Pictorial representation of the findings </sup> </p>

  ## 7. References 

   1. Li, J., Ji, Y. Clinicopathological characteristics and genetic features of young and senior Ewing sarcoma patients. Diagn Pathol 19, 124 (2024). <https://doi.org/10.1186/s13000-024-01548-4>

   2. Andrew EC, Lewin J, Desai J, Orme L, Hamilton A, Bae S, Zhu W, Nicolson S, Varghese LN, Mitchell CB, et al. Clinical Impact of Comprehensive Molecular Profiling in Adolescents and Young Adults with Sarcoma. Journal of Personalized Medicine. 2024; 14(2):128. <https://doi.org/10.3390/jpm14020128>

   3. Bleyer A, Barr R, Hayes-Lattin B, et al. The distinctive biology of cancer in adolescents and young adults. Nat Rev Cancer. 2008;8(4):288-298. doi:10.1038/nrc2349

   4. Chung SJ, Nagaraju GP, Nagalingam A, et al. ADIPOQ/adiponectin induces cytotoxic autophagy in breast cancer cells through STK11/LKB1-mediated activation of the AMPK-ULK1 axis. Autophagy. 2017;13(8):1386-1403. doi:10.1080/15548627.2017.1332565

   5. Yuan L, Wu X, Zhang L, et al. SFTPA1 is a potential prognostic biomarker correlated with immune cell infiltration and response to immunotherapy in lung adenocarcinoma. Cancer Immunol Immunother. 2022;71(2):399-415. doi:10.1007/s00262-021-02995-4

   6. Luo, H., Li, Q., Wang, RT. et al. Downregulation of pro-surfactant protein B contributes to the recurrence of early-stage non-small cell lung cancer by activating PGK1-mediated Akt signaling. Exp Hematol Oncol 12, 94 (2023). <https://doi.org/10.1186/s40164-023-00455-6>.

   7. Wolfson JA, Kenzik KM, Foxworthy B, et al. Understanding Causes of Inferior Outcomes in Adolescents and Young Adults With Cancer. J Natl Compr Canc Netw. 2023;21(8):881-888. doi:10.6004/jnccn.2023.7056.

   8. Tricoli JV, Blair DG, Anders CK, Bleyer WA, Boardman LA, Khan J, Kummar S, Hayes-Lattin B, Hunger SP, Merchant M, Seibel NL, Thurin M, Willman CL. Biologic and clinical characteristics of adolescent and young adult cancers: Acute lymphoblastic leukemia, colorectal cancer, breast cancer, melanoma, and sarcoma. Cancer. 2016 Apr 1;122(7):1017-28. doi: 10.1002/cncr.29871. Epub 2016 Feb 5. PMID: 26849082; PMCID: PMC4803597.

   9. Huang W, Cao L. Targeting GABA signaling for cancer treatment. Nat Cell Biol. 2022;24(2):131-132. doi:10.1038/s41556-021-00839-y

   10. Bhattacharya D, Gawali VS, Kallay L, Toukam DK, Koehler A, Stambrook P, Krummel DP, Sengupta S. Therapeutically leveraging GABAA receptors in cancer. Exp Biol Med (Maywood). 2021 Oct;246(19):2128-2135. doi: 10.1177/15353702211032549. PMID: 34649481; PMCID: PMC8524771.

   11. Yang Y, Ren L, Li W, et al. GABAergic signaling as a potential therapeutic target in cancers. Biomed Pharmacother. 2023;161:114410. doi:10.1016/j.biopha.2023.114410

   12. Wang K, Peng B, Xu R, et al. Comprehensive analysis of PPP4C's impact on prognosis, immune microenvironment, and immunotherapy response in lung adenocarcinoma using single-cell sequencing and multi-omics. Front Immunol. 2024;15:1416632. Published 2024 Jul 4. doi:10.3389/fimmu.2024.1416632

   13. Zhang, Z., Zhang, Y. Transcriptional regulation of cancer stem cell: regulatory factors elucidation and cancer treatment strategies. J Exp Clin Cancer Res 43, 99 (2024).[ https://doi.org/10.1186/s13046-024-03021-y](https://doi.org/10.1186/s13046-024-03021-y)

   14. Koda S, Hu J, Ju X, Sun G, Shao S, Tang RX, Zheng KY, Yan J. The role of glutamate receptors in the regulation of the tumor microenvironment. Front Immunol. 2023 Feb 1;14:1123841. doi: 10.3389/fimmu.2023.1123841. PMID: 36817470; PMCID: PMC9929049.

   15. A., B., Shin, S.-S., & Che, S. (2013). Glutamate Signaling in Human Cancers. InTech. doi: 10.5772/55174

   16. Wu L, Lian W, Zhao L. Calcium signaling in cancer progression and therapy. FEBS J. 2021;288(21):6187-6205. doi:10.1111/febs.16133

   17. Kanbara K, Otsuki Y, Watanabe M, et al. GABAB receptor regulates proliferation in the high-grade chondrosarcoma cell line OUMS-27 via apoptotic pathways. BMC Cancer. 2018;18(1):263. Published 2018 Mar 7. doi:10.1186/s12885-018-4149-4

   18. Xing L, Cheng Q, Zha G, Yi S. Transcriptional Profiling at High Temporal Resolution Reveals Robust Immune/Inflammatory Responses during Rat Sciatic Nerve Recovery. Mediators Inflamm. 2017;2017:3827841. doi: 10.1155/2017/3827841. Epub 2017 Apr 12. PMID: 28490837; PMCID: PMC5405595.

   19. Filippi MD. Mechanism of Diapedesis: Importance of the Transcellular Route. Adv Immunol. 2016;129:25-53. doi: 10.1016/bs.ai.2015.09.001. Epub 2015 Oct 14. PMID: 26791857; PMCID: PMC4889131.

   20. Ahmed H, Mahmud AR, Siddiquee MF, Shahriar A, Biswas P, Shimul MEK, Ahmed SZ, Ema TI, Rahman N, Khan MA, Mizan MFR, Emran TB. Role of T cells in cancer immunotherapy: Opportunities and challenges. Cancer Pathog Ther. 2022 Dec 20;1(2):116-126. doi: 10.1016/j.cpt.2022.12.002. PMID: 38328405; PMCID: PMC10846312.

   21. Wood GE, Meyer C, Petitprez F, D'Angelo SP. Immunotherapy in Sarcoma: Current Data and Promising Strategies. Am Soc Clin Oncol Educ Book. 2024;44(3):e432234. doi:10.1200/EDBK\_432234

   22. Koumarianou A, Duran-Moreno J. The Sarcoma Immune Landscape: Emerging Challenges, Prognostic Significance and Prospective Impact for Immunotherapy Approaches. Cancers (Basel). 2021 Jan 20;13(3):363. doi: 10.3390/cancers13030363. PMID: 33498238; PMCID: PMC7863949.

   23. Jeong S, Afroz S, Kang D, Noh J, Suh J, Kim JH, You HJ, Kang HG, Kim YJ, Kim JH. Sarcoma Immunotherapy: Confronting Present Hurdles and Unveiling Upcoming Opportunities. Mol Cells. 2023 Oct 31;46(10):579-588. doi: 10.14348/molcells.2023.0079. Epub 2023 Sep 22. PMID: 37853684; PMCID: PMC10590708.

   24. Roumenina, Lubka T et al. “Tumor Cells Hijack Macrophage-Produced Complement C1q to Promote Tumor Growth.” _Cancer immunology research_ vol. 7,7 (2019): 1091-1105. doi:10.1158/2326-6066.CIR-18-089.

   25. Chen LH, Liu JF, Lu Y, He XY, Zhang C, Zhou HH. Complement C1q (C1qA, C1qB, and C1qC) May Be a Potential Prognostic Factor and an Index of Tumor Microenvironment Remodeling in Osteosarcoma. Front Oncol. 2021 May 17;11:642144. doi: 10.3389/fonc.2021.642144. PMID: 34079754; PMCID: PMC8166322.

   26. Yuan J, Yu S. Comprehensive Analysis Reveals Prognostic and Therapeutic Immunity-Related Biomarkers for Pediatric Metastatic Osteosarcoma. Medicina (Kaunas). 2024 Jan 4;60(1):95. doi: 10.3390/medicina60010095. PMID: 38256356; PMCID: PMC10820594.
<!--EndFragment-->
