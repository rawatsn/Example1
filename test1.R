file <- "TCGA_breast_cancer_LumA_vs_Basal_PAM50.tsv"
header <- scan(file, nlines = 1, sep="\t", what = character())
data <- read.table(file, skip = 2, header = FALSE, sep = "\t", quote = "", check.names=FALSE)
names(data) <- header

dim(data) 

data$sample_id 


data[data$sample_id=="BCL2",]

data[,c(6)] 

header2 <- scan(file, skip = 1, nlines = 1, sep="\t",      what = character())

LumA <- data[,header2=='Luminal A']

Basal <- data[,header2=='Basal-like']
dim(data) 
