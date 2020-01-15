#Tarea 1 Genómica Funcional
#15-01-2020

#1) RNA a AA
library(Biostrings)
readRNAStringSet("first.fasta") -> secuencia_rna
secuencia_rna
secuencia_aa <- translate(secuencia_rna)
secuencia_aa

#2) Problemas de la plataforma Rosalind
#Counting DNA Nucleotides
readDNAStringSet("first.fasta") -> secuencia_dna
secuencia_dna
#Comprobación
seq1 <- DNAString("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")
seq1
conteo_nucleótidos1 <- alphabetFrequency(seq1)
conteo_nucleótidos1

#Computing GC Content
#Comprobación
seq1 <- DNAString("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")
seq1
conteo_nucleótidos1 <- alphabetFrequency(seq1)
conteo_nucleótidos1

#Programa que cuente la frecuencia de cada nucleotido y contenido CG
conteo_ACGT <-function(x,y){
  conteo <- 0
 