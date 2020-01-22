#Tarea 1 Genomica Funcional
#15-01-2020

library(Biostrings)

#1) RNA a AA
#Leer la secuencia de RNA con librerias de Biostring
#Secuencia adjunta a la tarea
readRNAStringSet("Genómica Funcional/first.fasta") -> secuencia_rna
secuencia_rna
#Traducir
secuencia_aa <- translate(secuencia_rna)
secuencia_aa

#2) Problemas de la plataforma Rosalind
#Counting DNA Nucleotides
seq1 <- DNAString("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")
seq1
#Convertir nuestra secuencia a vector
vector <- as.vector(seq1)
vector

#Conteo de nucleotidos
#Identificacion de los elementos de nuestro vector, indicar que nos arroje
#todo lo que es igual a cada uno de nuestros nucleotidos
#A
A <-length(which(vector == "A"))
A
#G
G <-length(which(vector == "G"))
G
#C
C <-length(which(vector == "C"))
C
#T
T <-length(which(vector == "T"))
T
#Comprobacion
conteo_nucleotidos1 <- alphabetFrequency(seq1)
conteo_nucleotidos1

#Computing GC Content
seq2 <- DNAString("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAACGAAAAAGAGTGTCTGATAGCAGC")
seq2

#Convertir a vector
vector2 <- as.vector(seq2)
vector2

#Ver los match de las posiciones de "C" y "G"
charmatch(vector2, "C")-> matchC
matchC
charmatch(vector2, "G")-> matchG
matchG
#Contabilizarlos con la funcion table
conteoC <- table(matchC)
conteoC
conteoG <- table(matchG)
conteoG

sum(conteoC, conteoG)

#Comprobacion
conteo_nucleotidos2 <- letterFrequency(seq2, "GC")
conteo_nucleotidos2

#Intentos con un loop For
seq4<- DNAString("AGCTTTCTATTCTGACTGCAAC")
class(seq4)
x <- toString(seq4)
class(x)
#Nucleotido CG
CG <- 0
for (i in 1:length(x)){
  if ("CG"[i]== x[i]){
    print(CG <- CG+1)
  }
}
CG
#No cumple/ no corresponde
#Se observo el mismo resultado para los nucleotidos de manera independiente
 
