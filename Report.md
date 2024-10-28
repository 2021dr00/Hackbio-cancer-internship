<!--StartFragment-->


# Report on Differential Gene Expression Analysis and Visualising Functional Enrichment Analysis data of Glioblastoma RNA-Seq Data 

<!--StartFragment-->Authors (@slack) - Vidhyavathy Nagarajan(@vidhya2205), Ahmed( @Hasan) ,  Shreya Karandikar (@Shreya), Dharshana Rajkumar(@Dharshana), Maram Nhaili(@Maram), Rutuja Pangare (@rutuja0502), Zaka Ullah (@Zaka)

Link to Code and Readme Github repository - [Github Repo](https://github.com/ahmedsArena/code_stage-2)  [Github link to Code](https://github.com/ahmedsArena/code_stage-2/blob/main/R_code.Rmd)

## 1. Importance of Color Selection in Data Visualization:

### &nbsp; 1.1. Heatmaps using different colour panels

Heatmaps visually display gene expression levels across samples, highlighting patterns of upregulation or downregulation.

**Diverging Color Palette** (Red to Blue, Fig 1(a)): This palette is ideal for representing data with both positive and negative values, where red indicates high expression and blue indicates low expression, with a neutral colour marking the midpoint. This enhances interpretability, making it easy to spot significant differences, especially of moderate and low expression levels, reducing ambiguity and making trends more apparent.

**Sequential Color Palette** (Blues, Fig 1(b)): This palette is used for data that progresses from low to high values, with darker blues representing higher expression. It emphasises gradual changes, helping to reveal trends.

Overall, the aim is to choose a suitable colour palette that enhances readability and accessibility, ensuring accurate interpretation of gene expression profiles. 
<p align = center float="left">
  <img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXenu2VAlEfSwPdXLBjCeftP3mNHMkeZ8YKQ4RVJF8Xu6t1BtmiGs67llnIODUZOzW5W1ScOsFz9oUsbKpS5lxGuCB1PBmobequ3zXnL5dYMEjNWkI8OnYxkLyUx54k3FlmRhmnwcQsLyY7JIVoy6D-DFRC5?key=qE3d49lPK2-8UmO-GkLu5Q" width="390" height = "500" />
  <img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeZy0uXfC8kGdS351OichG8kRWQa33DCIs4Bh9aP4VG1p6OLfZfU76FQXgRLA9emdZi4VIixjMDFiYQXyKt8fNpit8Tsu5B9X6p6uiPMeoRbq_M8rdgE7IYnPAt0132nE2162hzDVsvODEca-ur9x7oZFaS?key=qE3d49lPK2-8UmO-GkLu5Q" width="390"  height = "500" /> 
</p>
<p align = center>
  <sup>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fig1(a). Heatmap with diverging colour palette &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fig1(b). Heatmap with sequential colour palette) 
  </sup>
</p>

### &nbsp; 1.2. Heatmaps based on dendrograms

<p align = center float="left">
  <img src ="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcIilSbDBkYw8HfhcPRxnNrIRObEPvAR6Ae2qKH0U5UbhwzpCOMOw_8V5VrdWeSM31Og6Z3vyM7aluMPtmB5qd4DIoxrj711mQlUBpae0eldQng0tWFpzBFDIxXRpJ0d9XJz_B7jUNNZQdX66y-F6lZ7tzY?key=qE3d49lPK2-8UmO-GkLu5Q"  width="260" height = "500" />  
  <img src ="https://lh7-rt.googleusercontent.com/docsz/AD_4nXefkF9ShlXdw00HeFEH6_NzrglGckkG0R6YCYQg72N1t7KpNU9k9-GVqRT0pObfDa0or7Qnxy6S0rTkxisi7tbwpT0ja-GUj2W8KIesD9vnjo4bxRtzzZj9UZrW9kRmP9izjxCcw5C2N1oYB_UC8BxXuFSY?key=qE3d49lPK2-8UmO-GkLu5Q"  width="260" height = "500" />  
  <img src ="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfgZaWEJLIr68oPR2W474dz4-TBGToT_yQdmun4MEQwua7HXKJRXGzPz4dTluFUB_hajEfl9JtKO-6j52MSaGp9V25Rqmz9o_5Upo_YMLzJ5rN-ESzyc9FGtDW-fAnh54UfsHZ0dUw0on2kL1AuC2SC3Qc?key=qE3d49lPK2-8UmO-GkLu5Q" width="260" height = "500" />  
  </p>
<p align = center>
  <sup>  Fig 2 (a) - Heatmap with row clustering       Fig 2 (b) - Heatmap with column clustering       Fig 2 (c) - Heatmap with both clustering </sup> </p>

## 2. Up regulated and Downregulated genes

Samples were clustered into two groups based on the heatmap visualisation(Fig 1(a)). Using log<sub>2</sub>foldchange(<-2 to >2) and p value(<1.5) cutoffs, upregulated and downregulated genes were identified for the two groups.
<p align = center>
  
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfRn02rSSLLhsMtBTE6zTTHLnjdyfrH3ltEQm9haJVRU43tFtTBE7DVKnG17I6jZDXciYyQnGyeGnMvZWI_lrUgIVwzSgMjkT7o-p8iPNVkfI6tDbsO7RUbqtj-PQmwy_uuiXI4nLQoFbZi4B88E7n3IB6P?key=qE3d49lPK2-8UmO-GkLu5Q" width= "600" height ="150" />

</p>
<p align = center>
  
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdI7woPK7wcJYcCdoKBPJtNJEbvgfpwcG3wIBFHC9BrbtMzNDaAkb1jorUF3fkblQYc5JgIQM8zRA58R0PONdSv7kXZA9dLN6DEuQ-D-8x-PReilwJtXXPRPiC26S55JTcvcXPhTFnDqzT00DqF2_25JIBV?key=qE3d49lPK2-8UmO-GkLu5Q" width= "500" height ="450" />

</p>
<p align = center> <sup> Fig. 3. Volcano plot depicting the distribution of log<sub>2</sub>foldchange and p value </sup> </p>

## 3. Visualisation of functional enrichment analysis results:

The upregulated genes were used for functional enrichment analysis (biological process) using ShinyGO. The top 5 pathways in the biological process GO category were identified by sorting wrt FDR values and a graph was plotted for visualisation. The top 3 enriched pathways are selected based on fold enrichment.
<p align = center>
  
<img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfQ8dWXYIn0MKcK0R4QBKliAQYvHBCezQc2sZTBXjnef0v42tmgkTk81sgpww3QHZzk_35medJN9uWUSX8-15M017lTKG4IJzJZsDLgIOENBl5SkSAA_lbmidVu0J3vBZoe2UxlOjQY82YLJsAjDcW0wXok?key=qE3d49lPK2-8UmO-GkLu5Q" width= "500" height ="300" />

</p>

<p align = center> <sup> Figure 4: Bubble plot of enriched pathways</sup> </p>

### &nbsp; 3.1. Top 3 enriched pathways according to fold enrichment values

&nbsp; &nbsp; &nbsp; 1. **Thalamus Development:**   The thalamic development is regulated by various mechanisms in tandem with the development of other brain regions. The genes involved regulate cell proliferation, differentiation, migration and synaptogenesis. Disruption may lead to abnormal growth and function of thalamic cells affecting our cognitive and motor abilities (Salavarria _et al_., 2023).

&nbsp; &nbsp; &nbsp; 2. **Neural Tube Development:** The pathway is crucial for central nervous system formation, maybe misregulated in glioblastoma, leading to uncontrolled cell growth, migration, and disruption of normal brain structures, promoting the tumour's aggressive behaviour (Ah-Pine _et al._, 2023).

&nbsp; &nbsp; &nbsp; 3. **Pattern Specification Process:** It ensures proper cell differentiation and spatial organization during development. Dysregulation of this pathway may impair the proper development of cells (Hackett, J.A _et al.,_ 2018).

### 4.  References 

1. Ah-Pine, F., Khettab, M., Bedoui, Y. _et al._ On the origin and development of glioblastoma: multifaceted role of perivascular mesenchymal stromal cells. _acta neuropathol commun_ 11, 104 (2023). <https://doi.org/10.1186/s40478-023-01605-x>

2. Salavarria, M. M. A., Dell’Amico, C., D’Agostino, A., Conti, L., & Onorati, M. (2023). Cortico-thalamic development and disease: From cells, to circuits, to schizophrenia. Frontiers in Neuroanatomy, 17. <https://doi.org/10.3389/fnana.2023.1130797>

3. Hackett, J.A., Huang, Y., Günesdogan, U. et al. Tracing the transitions from pluripotency to germ cell fate with CRISPR screening. Nat Commun 9, 4292 (2018). <https://doi.org/10.1038/s41467-018-06230-0> <!--EndFragment-->

<!--EndFragment-->
