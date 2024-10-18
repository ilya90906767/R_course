

rna <- read.delim("C:\\RStudio_BetyaevILya\\Seven\\mRNA-protein_correlation.txt", as.is = TRUE)

rownames <- rownames(rna) 
colnames(rna) <- c("Protein","Gene","RNACN","PrCN")

rna <-na.omit(rna)

pr<- par(no.readonly=TRUE)
par(mfrow=c(2,1))
boxplot(log2(RNACN)~Gene,data=rna, main="РНК к Гену")
lines(rna$Gene, col="red",lwd=2)
boxplot(log2(PrCN)~Gene,data=rna, main="РНК к Гену")
par(pr)