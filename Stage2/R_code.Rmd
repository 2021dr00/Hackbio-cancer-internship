---
title: "R Notebook"
output: html_notebook
---

This is an [R Markdown](http://rmarkdown.rstudio.com) Notebook. When you execute code within the notebook, the results appear beneath the code. 

Try executing this chunk by clicking the *Run* button within the chunk or by placing your cursor inside it and pressing *Ctrl+Shift+Enter*. 
```{r}
#Library for heatmap plotiing
library("gplots")
# Load your data
glioma_data <- read.csv("https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/Cancer2024/glioblastoma.csv", row.names = 1)

#------------------------------------------------ Heatmap Generation-----------------------------------------------
#1. Color variations
    #1.1 Diverging colors 
#setting outter and inner margins to get a appealing plot
par(oma = c(1,1,1,1)) #Setting outter margins
par(mar = c(1,1,1,1)) #setting inner plot margins
par(cex.main = 0.75) #size of the title
heatmap.2(as.matrix(glioma_data),
          col = hcl.colors(100, palette = "Blue-Red 3"), # Diverging palette
          Colv = F,                         # Cluster columns
          Rowv = F,                         # Cluster rows
          dendrogram = "none",              # No cluster both rows and columns
          trace = "none",                   # Remove trace lines
          scale = "row",                    # Standardizes rows (genes) across samples
          sepcolor = "black",               #separate the columns
          key = TRUE,                       # Show color key
          cexRow = 0.5,                     # Adjust row label size
          cexCol = 0.5,                     # Adjust column label size
          margins = c(9, 7),                # Adjust margins to fit labels
          main = "Heatmap_No_Clusters_Diverging_Palette", #Title
          xlab = "Samples",                 #X axis label
          ylab = "Genes",                   #Y axis label
          key.title = "Expression Level")
#----------------------------------------------------
      #1.2 Sequential Colors
par(oma = c(1,1,1,1)) #Setting outter margins
par(mar = c(1,1,1,1)) #setting inner plot margins
par(cex.main = 0.75) #size of the title
heatmap.2(as.matrix(glioma_data), 
          col = hcl.colors(100, palette = "Blues2"),           
          Rowv = F, Colv = F,                  
          dendrogram = "none",                 
          trace = "none",                      
          key = TRUE,                          
          keysize = 1.5,                       
          scale = 'row',                       
          sepcolor = "black",                  
          cexRow = 0.5,cexCol = 0.5,           
          margin =c(9,7),                      
          main = "Heatmap_No_Clusters_Sequential_Palette", 
          xlab = "Samples",                                
          ylab = "Genes",
          key.title = "Expression Level") 
#----------------------------------------------------
#2. Clustering
   #2.1Clustering by Row
par(oma = c(1,1,1,1)) #Setting outter margins
par(mar = c(1,1,1,1)) #setting inner plot margins
par(cex.main = 0.75) #size of the title
heatmap.2(as.matrix(glioma_data),
          col = hcl.colors(100, palette = "Blue-Red 3"),                          
          Rowv = T, Colv = F,                                  
          dendrogram = "row",                                  
          trace = "none",                                      
          key = TRUE,                                          
          keysize = 1.5,                                       
          scale = 'row',                                       
          sepcolor = "black",                                  
          cexRow = 0.5,cexCol = 0.5,                           
          margin =c(9,7),                                      
          main = "Heatmap_Row_Clusters", 
          xlab = "Samples", 
          ylab = "Genes",
          key.title = "Expression Level") 
#----------------------------------------------------
  #2.2 Clustering by Columns
par(oma = c(1,1,1,1)) 
par(mar = c(1,1,1,1)) 
par(cex.main = 0.75) 
heatmap.2(as.matrix(glioma_data),
          col = hcl.colors(100, palette = "Blue-Red 3"), 
          Rowv = F, Colv = T, 
          dendrogram = "col", 
          trace = "none", 
          key = TRUE, 
          keysize = 1.5,
          scale = 'row', 
          sepcolor = "black", 
          cexRow = 0.5,cexCol = 0.5, 
          margin =c(9,7), 
          main = "Heatmap_Column_Clusters", 
          xlab = "Samples", 
          ylab = "Genes",
          key.title = "Expression Level") 
#----------------------------------------------------
  #2.3 Clustering by Both Rows and Columns
par(oma = c(1,1,1,1)) 
par(mar = c(1,1,1,1)) 
par(cex.main = 0.75) 
heatmap.2(as.matrix(glioma_data), 
          col = hcl.colors(100, palette = "Blue-Red 3"), 
          Rowv = T, Colv = T, 
          dendrogram = "both", 
          trace = "none", 
          key = TRUE, 
          keysize = 1.5, 
          scale = 'row', 
          sepcolor = "black", 
          cexRow = 0.5,cexCol = 0.5, 
          margin =c(9,7), 
          main = "Heatmap_Both_Clusters", 
          xlab = "Samples", 
          ylab = "Genes",
          key.title = "Expression Level") 

```

```{r}
#-----------------------------------------------Up and Down Regulated Genes---------------------------------------------
#load the data
glioma_data <- read.csv("https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/Cancer2024/glioblastoma.csv", row.names = 1)

# groups based on the heatmaps generated in previous section - 
#group 1: ("TCGA.19.4065.02A.11R.2005.01" "TCGA.19.0957.02A.11R.2005.01", "TCGA.06.0152.02A.01R.2005.01", "TCGA.14.1402.02A.01R.2005.01", "TCGA.14.0736.02A.01R.2005.01"), 
#group 2- c("TCGA.06.5410.01A.01R.1849.01","TCGA.19.5960.01A.11R.1850.01", "TCGA.14.0781.01B.01R.1849.01", "TCGA.02.2483.01A.01R.1849.01", "TCGA.06.2570.01A.01R.1849.01")

#Printing the column names of dataset
colnames(glioma_data)

#Goruping the samples into group1 and group2 
group1_data<-glioma_data[,c(1,2,3,4,5)]
colnames(group1_data)
group2_data<-glioma_data[,c(6,7,8,9,10)]
colnames(group2_data)

#obtaining the group means (expression data) glioma_data data for group 1 and group 2
group1_means<-rowMeans(group1_data)
group2_means<-rowMeans(group2_data)

#Calculating log fold change
log_fold_change <- log2(group2_means) -log2(group1_means)

#calculating p values
pvalues <- apply(glioma_data, 1, function(row) {t.test(row[1:5], row[6:10])$p.value})

# visualise the fold change and negative log of pvalues
plot(log_fold_change,(-log10(pvalues)), xlab ="log2(foldchange)", ylab = "-log10(p-value)", main = "Volcano Plot")

#Based on the plot we can set log2(foldchange) threshold to be -2 to 2 and p value as 0.15 as most of the genes filter out with p value of 0.05

#Creating a dataframe containg gene names, fold enrichment and p-values
exp_df<-data.frame(log_fold_change,pvalues)

#setting all genes to not significant (default)
exp_df$diff_exp <-"No" 

#filtering based on cuttoff
exp_df$diff_exp[exp_df$log_fold_change>2 & exp_df$pvalues <0.15] <-"UP"
exp_df$diff_exp[exp_df$log_fold_change< (-2) & exp_df$pvalues <0.15] <-"DOWN"

#No. of up, down regulated genes
table(exp_df$diff_exp)

write.csv(exp_df, file= "UP_DOWN.csv", row.names = TRUE)
```

```{r}
#-------------------------------------------------Plotting Pathway---------------------------------------------------------
setwd("D:/HackBio/Intenship/stage 2/Pathway/Final")
#load the libraries for bubble plot
library(ggplot2)

#load the results from ShinyGo analysis for upregulated genes
Enrich_UP <- read.csv("enrichment_up.csv")

#pringting the column names to confirm the dataset
colnames(Enrich_UP)

#Removing the ID from pathway names to plot
Enrich_UP$Pathway_Term<-substr(Enrich_UP$Pathway,12,nchar(Enrich_UP$Pathway))

#obtaing the negative log of p value to plot
Enrich_UP$neglogP<- (-log(Enrich_UP$Enrichment.FDR))

#Plotting the data as a bubble plot 
ggplot(Enrich_UP, aes(x = nGenes, y = Pathway_Term, size = Fold.Enrichment, color = neglogP)) +
  scale_color_gradient(low = "red", high = "blue")+
  geom_point(alpha =0.5) + labs(x = "No_of_Genes", y = "Pathways", title = "Enriched_BP_Pathways_Upregulated_Genes")+
  scale_size(name = "Fold_Enrichment", range = c(1, 10))+
  theme(plot.title = element_text(hjust = 0.5, vjust = 3))
  
```
