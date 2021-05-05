# policyorpartisanship

# Gov 52 Final Replication Project: 
### Policy or Partisanship: Replicating Results From An Analysis of Quasi-Experimental Evidence From Brexit

#### Trisha Prabhu; Spring 2021

### Description of files:

This repo contains 1 key file: "policyorpartisanship_brextianalysis.Rmd," the
Rmd file that contains all of the code used in the creation of this final 
replication project. This Rmd file also contains all of the commentary/
interpretation associated with the various components of the project, from the
replicated results, to my extension. Note that 
"policyorpartisanship_brextianalysis.pdf" is the knitted version of this Rmd 
file.

There is also one other file:

"deletedcode.R" contains code that I explored in the creation of this 
replication, but ultimately did not include. It's include here for future
reference, if necessary.

### How to run the code/the output that is produced:

First, download the repo's contents. Note that this repo does not contain the
original data used in this analysis, given the size of the datasets. With that
said, you can find and download all of the data here: https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/QVTCYP.
The relevant data are the "BES" files - various waves of data from the British 
Election Study used in the authors' original paper/my replication.

Open the .Rmd file, and load in all of the datasets, as I do; then, execute each
chunk of code, from top to bottom, in order. You should be able to produce all
6 tables/the 2 figures included in the authors' original paper (this is the 
replication of their results), followed by an extension in which I explore 
employing another regression method, logistic regression, to run the authors 
most important analyses. If you knit the .Rmd file (or open the associated 
.pdf file), you will see a clean report with the associated written commentary.

### A record of my computational environment:
* Operating system: macOS High Sierra (Version 10.13.6)
* R Version: 4.0.2
* R packages used: foreign, tidyverse, ggplot2, arm, stargazer, janitor, 
ggthemes, dplyr, packrat, sjPlot, cowplot; all latest version as of 05/2021


