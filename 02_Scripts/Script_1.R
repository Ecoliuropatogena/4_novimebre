# Actividad 4 de noviembre

# 2 Secuencias
# Alineamiento con almenos 2 metodos
# Arbol filogenetico
# Hacer un Rmarkdown

library(Biostrings)
library(msa)
library(seqinr)
library(ggmsa)
library(ape)

# Asi se selecciona el archivo de las secuencias
file.choose() -> Hepatitis_junto

# Asi lo leo
readDNAStringSet(Hepatitis_junto) -> Hepatitis_junto


# Estos son los 2 posibles metodos de alineamientos
msa(Hepatitis_junto, "ClustalW") -> Alineamiento_Hepatitis

msa(Hepatitis_junto, "ClustalOmega") -> Alineamiento_Hepatitis_alterno


# Este es el proceso para realizar el arbol
Alineamiento_Hepatitis2 <- msaConvert(Alineamiento_Hepatitis, type="seqinr::alignment")

distancias <- dist.alignment(Alineamiento_Hepatitis2, "identity")

as.matrix(distancias) -> distancias

Arbol_hepatitis <- nj(distancias)


# Esta es la grafica
plot(Arbol_hepatitis, main="Arbol filogenetico de las variantes 1, 3, 5 y 7 de la Hepatitis C")



 
 
 
