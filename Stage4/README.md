# **Clustering of LGG using Expression Profiles and Identifying Expression-Based Biomarkers in IDH wild-type LGG TCGA samples**

## 1. **Project Objective**

In this project, a gene expression dataset for brain low grade glioma (LGG) from The Cancer Genome Atlas (TCGA) was pre-processed and analyzed downstream to provide insights into the expression-based alterations in IDH mutant and wild-type (WT) LGG and identify potential cancer biomarkers using differential gene expression analysis, functional enrichment analysis, and unsupervised clustering. The project involved data visualization and interpretation of the identified biomarkers and clustering performance.

## 2. **GitHub repository folders**

* Code \- contains the R script of the code for data preprocessing, differential gene expression analysis (DGEA), functional enrichment analysis (FEA), and unsupervised K-means clustering.  
* Data \- contains the data obtained after pre-processing, unsupervised clustering, and differential expression analysis.  
* Images \- contains the results generated from DGEA, FEA, and unsupervised clustering.  
* Report \- contains the markdown file of the project report.

## 3. **Requirements**

   The following R libraries were used

* TCGAbiolinks  
* sesameData  
* SummarizedExperiment  
* dplyr  
* tidyr  
* ggplot2  
* biomaRt  
* EnhancedVolcano  
* gplots  
* org.Hs.eg.db  
* reshape2  
* caret  
* cluster  
* kknn  
* randomForest  
* factorextra  
* pheatmap  
* preprocessCore  
These can be installed by running:  
install.packages(c(“dplyr “tidyr”, “caret”,”cluster”,”kknn”, “randomForest”, “factorextra”, “ggplot2”, “pheatmap”, “preprocessCore”,”gplot”,”reshape2”))

To install Bioconductor packages:
* install.packages("BiocManager")  
* BiocManager::install("TCGAbiolinks")   
* BiocManager::install("SummarizedExperiment")  
* BiocManager::install("org.Hs.eg.db")  
* BiocManager::install("EnhancedVolcano")

## 4. **Methodology \- Code**
### **4.1.  Data collection and preprocessing** 
* The dataset for LGG ("**TCGA-LGG**" project) was obtained from TCGA using the **TCGAbiolinks** package functions in R.   
* A query was prepared to retrieve "**Gene Expression Quantification**" data from the "**Transcriptome Profiling**" data category of the "**TCGA-LGG**" project, focusing on the tissue type **"Primary Tumor"** using **GDCquery()** function  
* Using **GDCdownload()** and **GDCprepare()** functions of the TCGAbiolinks package, the sample sets were downloaded and prepared for analysis.  
* From the retrieved data, metadata was obtained with the sample **“barcode”**,  "**paper\_IDH.status**", **"Gender"** and **"Primary\_Diagnosis"** fields.  
* Samples with missing or inaccurate IDH\_status  were excluded.  
* The values of the "**IDH.status**" subgroup were divided into two groups based on the IDH status: **Mutant** and **WT.** 
* A bubble plot representing the primary tumors with IDH status, diagnosis, and gender was plotted using **ggplot()** to illustrate the dataset distribution.  
* The unstranded dataset was selected for analysis.  
* The **TCGAanalyze\_Normalization()** function was used to normalize the gene expression data by gene length and read depth.  
* The **TCGAanalyze\_Filtering()** function was used to eliminate low-expression genes from the normalized data with the cutoff set at the first quantile (0.25).  
* The final filtered data was analyzed downstream for ML model, DGEA and FEA.
  
### **4.2.  Differential gene expression analysis** 
    
* The **TCGAanalyze\_DEA()** function was used to compare gene expression levels between the IDH-WT and IDH-Mutant groups using the **edgeR** pipeline.   
* Genes were categorized as significantly upregulated and significantly downregulated based on a log fold-change (FC) threshold of \>1 or \<(-1) and a false discovery rate (FDR) of \<0.05.  
* A volcano plot was generated for the differentially expressed genes using the **EnhancedVolcano()** function.   
* The top 5% of upregulated and downregulated genes were selected and a heatmap was generated using the **heatmap.2()** function with a sequential color palette.  
* The **mapIds()** function in the **org.Hs.eg.db package** was used to convert Ensembl IDs to HGNC symbols for the DGEA results.  
* Significant TFs identified in the study conducted by Ceccarelli M *et al*., 2016 were compared with the current study and their mean expressions between the two groups (IDH\_mutant and IDH\_WT) are plotted as a bubble plot.  

### **4.3.  Functional enrichment analysis**

* The **TCGAanalyze\_EAcomplete()** function was used to conduct functional enrichment analysis for the genes with significant upregulated and downregulated genes.  
* The results of enrichment analysis were presented as bar plots using the **TCGAvisualize\_EAbarplot()** function to highlight the top 5 most enriched terms for biological processes, cellular components, molecular functions and pathways.  

### **4.4.  Data preparation for ML**
    
* The expression dataset was transposed to get a dataframe with samples as rows and genes as columns.   
* **str()** func was used to display the structures of the R object (expression data).  
* The expression values in the were numericized and set as data frame using **as.numeric()** and **as.data.frame()** functions.  
* Quantile normalization of the expression values was done using **normalize.quantiles(as.matrix())** function.

### **4.5.  Feature selection**

* The feature selection was done based on variance. The low-variance features were filtered out keeping the threshold as 0.93.  
* Variance of each expression value was found using **apply(your\_data, 2, var, na.rm \= TRUE)** function.  
* The expression data was filtered out using variance\>threshold.
  
### **4.6.  Unsupervised K-means clustering**

* After feature selection, the data was used to perform PCA. PCA was performed using the **prcomp()** function.  
* The results were set as a data frame using the **as.data.frame()** function and was plotted using **ggplot().**  
* The number of clusters were set as 2\. K-means clustering was performed on the PCA result using **kmeans()** function.  
* The cluster labels were added to the PCA data and they were set as a factor using the **as.factor()** function.  
* The PCA with the clusters were visualized using the **ggplot()** function.  
* The sample IDs belonging to each cluster were extracted and saved as a csv file.  
* The cluster data and the metadata was merged using **merge()** function and was saved as a csv file using **write.csv()** function.   
* The cluster- specific means of each feature was calculated using **aggregate()** function.  
* A heatmap for the clustered data with the clustered means of each feature was visualized using **pheatmap()** function.  
* The filtered data was log transformed using **log()** function and then normalized for z-score using **scale()** function.  
* The color palette was defined using **colorRampPalette()** function and gene expression heatmap was plotted using **pheatmap()** function.  
    
  
