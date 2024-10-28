# **Analysis of TCGA Sarcoma data for age-associated biomarkers in AYA patients and ML model development for classification**

1. ## **Project Objective**

In this project, a gene expression dataset for sarcoma from The Cancer Genome Atlas (TCGA) was pre-processed and analyzed downstream to identify potential cancer biomarkers based on age classification using differential gene expression analysis, functional enrichment analysis, and machine learning (ML) models. The project involved data visualization and interpretation of the identified biomarkers and model performance.

2. ## **GitHub Repository Folders**

* **Code** \- contains the R script of the code for differential gene expression analysis, functional enrichment analysis, and machine learning model.

* **Data** \- contains the data obtained after pre-processing and differential expression analysis.

* **Images** \- contains the results generated from differential gene expression analysis, functional enrichment analysis and machine learning model, as well as supplementary information.

* **Report** \- contains the markdown file of the project report and supplementary information.

  ## 

3. ## **Requirements**

   The following R libraries were used:

* TCGAbiolinks  
* SummarizedExperiment  
* data.table  
* dplyr  
* ggplot2  
* gplots  
* biomaRt  
* caret  
* DALEX  
* pROC  
* randomForest  
* reshape2  
    
  These can be installed by running:  
  install.packages(c(“data.table”, “gplots”, “caret”,”DALEX”,”pROC”, “randomForest”, “dplyr”, “ggplot2”, “reshape2”))  

  To install the Bioconductor packages:  
  install.packages("BiocManager")  
  BiocManager::install("TCGAbiolinks")   
  BiocManager::install("SummarizedExperiment")
  BiocManager::install("biomaRt")


4. ## **Methodology \- Code**

   

   ### **4.1.  Data collection and preprocessing**

     
* The sarcoma dataset ("**TCGA-SARC**" project) was obtained from The Cancer Genome Atlas (TCGA) using the **TCGAbiolinks** package functions in R.   
* A query was prepared to retrieve "**Gene Expression Quantification**" data from the "**Transcriptome Profiling**" data category of the "**TCGA-SARC**" project, focusing on the sample types **"Metastatic"**, **"Primary Tumor"**, and **"Recurrent Tumor"** using **GDCquery()** function  
* Using **GDCdownload()** and **GDCquery()** functions of the TCGAbiolinks package, the sample sets were downloaded and prepared for analysis.  
* From the retrieved data, metadata was obtained with the sample **“barcode”** and  "**age\_at\_diagnosis**" fields.  
* Samples with missing or inaccurate age values were excluded.  
* The values of the "**age\_at\_diagnosis**" subgroup were converted from days to years, and the samples were divided into two age groups based on the threshold of 40 years (14,610 days): **18-40 years** and **≥40 years.**  
* The unstranded dataset was selected and twenty samples were selected at random from each age group for analysis.  
* The **TCGAanalyze\_Normalization()** function was used to normalize the gene expression data by gene length and read depth.  
* The **TCGAanalyze\_Filtering()** function was used to eliminate low-expression genes from the normalized data with the cutoff set at the first quantile (0.25).  
* The final filtered data was used for downstream differential expression analysis, enrichment analysis and machine learning (ML) analysis.


  ### **4.2.  Differential gene expression analysis** 

    
* The **TCGAanalyze\_DEA()** function was used to compare gene expression levels between the age groups ≥40 and 18-40 using the **edgeR** pipeline.   
* Genes were categorized as significantly upregulated, downregulated, based on a log fold change threshold of \>1.5 or \<-1.5 and a false discovery rate (FDR) \<0.005.  
* A volcano plot was generated using the **ggplot()** function and a heatmap was generated using the **heatmap.2()** function in R to visualize the differentially expressed genes.  
* The top 5 significantly upregulated and downregulated genes based on log fold change values were obtained and reported.


  ### **4.3.  Functional enrichment analysis**

* The **biomaRt package** was used to convert Ensembl IDs to HGNC symbols for genes with significant upregulation or downregulation.  
* The **TCGAanalyze\_EAcomplete()** function was used to conduct functional enrichment analysis for the genes with significant upregulation or downregulation.  
* The results of enrichment analysis were presented as bar plots using the **TCGAvisualize\_EAbarplot()** function to highlight the most enriched terms for biological processes, cellular components, molecular functions and pathways.  
   

  ### **4.4.  Data preparation for ML**

    
* The expression dataset was transposed to get a dataframe with samples as rows and genes as columns.   
* The expression dataset and metadata were merged based on the sample barcodes using the **merge()** function.  
* The expression values in the merged data were numericized using **mutate()** and **as.numeric()** functions.   
* The age\_group column in the data was changed as a factor using the **as.factor()** function. The **preProcess()** function was used to scale and center the data.  
     

  ### **4.5.  Feature selection**

    
* The feature selection was done by selecting the top 1000 variable features (genes) out of 30,000+ features based on the standard deviation values of the genes indicating variable expression levels.  
* SD values of the gene expression values were found, and they were sorted in a decreasing manner using the **sort()** function from which the top 1000 genes/features were filtered out.  
   

  ### **4.6.  Random forest classification**

    
* The data was split into train-set and test-set with 70% and 30% data respectively using **createDataPartition()**.   
* Using **randomForest()** function, a RF model was built based on the train set and predictions were made.   
* A confusion matrix for the test data was built using **confusionMatrix()** function. Metrics like precision, recall and F1 score were computed to determine the classification accuracy.   
* Functions like **posPredValue()** and **sensitivity()** were used to compute precision and recall, while F1 score was determined by dividing the product of 2\* precision and recall by sum of precision and recall.   
* The important features from the RF model were filtered out using **randomForest::importance(rf\_model)**.   
* These features were then ordered using **order()** in a decreasing manner based on the **MeanDecreaseGini** values.  
* The top 20 were selected from that list and plotted for their importance using the **ggplot()** function.  
* **ggplot()** was also used to plot a violin overlay box plot to visualize the expression of the top 20 genes across the two age groups.   
* For better visualization, log of expression values were used in the y-axis by using **log()** function.  
* The function **roc()** was used to return an ROC object which tells about the model performance, and this was plotted for visualization using **plot func()**.


  ## 5.    Supplementary Information 


###  **5. 1 Patient Demographics**   
  A **bubble plot** representing the primary diagnosis (subtype of sarcoma), gender, age group was plotted using **ggplot()** to represent the dataset distribution.  
    
 ### **5.2. Significant dysregulated genes identified by DGEA**
  An overview of the top dysregulated genes and their role in cancer.

 ### **5.3. Significant enriched pathways identified by FEA**
  An overview of the top enriched KEGG pathways and their role in cancer.

 ### **5.4. Significant genes (features) identified by ML model**
  A detailed overview of the genes identified by the ML.

 ### **5.5. Comparing significant genes from ML model and DGEA**  
  The log fold change and p values of  DEGA analysis is plotted as a volcano plot and significant DEG based on cutoffs along with significant feature(genes) identified by the ml model are highlighted using **ggplot()**.   
    
### **5.6. Visual representation of the findings**  
  The [Biorender](http://BioRender.com) tool was used to visually summarize the identified biomarkers.

    
    
    
    
  
