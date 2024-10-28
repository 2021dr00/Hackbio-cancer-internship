<!--StartFragment-->


# Differential Gene Expression Analysis and Visualizing Functional Enrichment Analysis Results of Glioblastoma RNA-Seq Data

## **Project Description** 

This project provides a step-by-step guide to visualizing gene expression data from a glioblastoma dataset and visualizing significant pathways from functional pathway enrichment analysis. We employ heatmaps to visualize the expression patterns, obtain 2 groups and conduct differential expression analysis to compute fold changes and p-values for significant genes. Further the 


## **Table of Contents**

1\. Requirements

2\. Loading Data

3\. Heatmap Generation

4\. Differential Expression Analysis

5\. Visualizing Results of Pathway enrichment study 


### **1.Requirements**

This project uses the following R libraries and default libraries installed in Rstudio:

1\. gplots

2\. ggplot2

You can install these libraries by running:

install.packages(c("gplots", "ggplot2"))


### **2.Loading Data**

#### 2.1 For gene expression analysis

The dataset is loaded directly from a public URL. This data contains gene expression profiles of glioblastoma samples.

url <- <https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/Cancer2024/glioblastoma.csv>

The dataset consists of samples as columns and genes as rows. Each value represents the expression level of a gene in a specific sample.


#### 2.2 For visualizing Pathway enrichment analysis

It requires the top 5 pathways sorted based on FDR values from the functional enrichment analysis results (Enrich\_UP dataset) done with the help of [ShinyGo](http://bioinformatics.sdstate.edu/go/) online tool containing the following columns : 

1. Enrichment.FDR - signifying the p- value significance

2. nGenes - specifying the number of genes in our subset that belong to the pathway

3. Pathway\_Term - The name of the pathway ( we used the substr function to remove the Pathway ID’s)

4. Fold Enrichment - Signifying the ratio of genes in our subset to the total number of background genes in the pathway


### **3. Heatmap Generation**

heatmap.2() function is used to plot the gene expression data. The columns represent the samples and rows represent the genes.


#### 3.1 Color variations

We used the col parameter in heatmap.2() and  hcl.colors() Blue-Red 3 (diverging color palette) and Blues2 (sequential color palette) to visualize the data. Based on the plot the samples were grouped into 2 categories to perform differential gene expression analysis.


####   3.2 Clustering

Rowv, Colv and dendrogram parameters of the heatmap.2() function is used to cluster the data by genes(row) and samples(column)


### **4. Differential Expression Analysis**

#### 4.1 Defining Groups

The data is split into two groups based on sample characteristics observed in the heatmap. 

group 1: ("TCGA.19.4065.02A.11R.2005.01" "TCGA.19.0957.02A.11R.2005.01", "TCGA.06.0152.02A.01R.2005.01", "TCGA.14.1402.02A.01R.2005.01", "TCGA.14.0736.02A.01R.2005.01")

group 2- c("TCGA.06.5410.01A.01R.1849.01","TCGA.19.5960.01A.11R.1850.01", "TCGA.14.0781.01B.01R.1849.01", "TCGA.02.2483.01A.01R.1849.01", "TCGA.06.2570.01A.01R.1849.01")


#### 4.2. Calculating Fold Change

We compute the log2 fold change for each gene between the two groups by subtracting the log2 values of each groups’ mean expression for that gene.


#### 4.3. Calculating P-values

To identify significant genes, we perform a t-test between the two groups and compute p-values for each gene


#### 4.4  Filtering Significant Upregulated and Downregulated Genes

The fold changes and p-values are plotted to create a volcano plot using the plot() that helps visualize the distribution of the fold change and p-value and decide the cutoff to identify up and down regulated genes .


### **5. Visualizing Results of Pathway enrichment study** 

Using the results of ShinyGo functional gene enrichment analysis of the upregulated genes we plotted a bubble plot that provides insights on the number of genes associated with the pathways, p-value significance and fold enrichment. ggplot() function is used for the same. 

The size and color options  in ggplot() are used to represent the fold enrichment and p-value significance while the x and y axis represent the gene count and pathway names.

<!--EndFragment-->
