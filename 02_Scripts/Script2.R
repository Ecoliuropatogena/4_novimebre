file.choose() -> globinas

readDNAStringSet(globinas) -> globinas

msa(globinas, "ClustalW") -> Alineamiento_globinas

Alineamiento_globinas <- msaConvert(Alineamiento_globinas, type="seqinr::alignment")

distancias_g <- dist.alignment(Alineamiento_globinas, "identity")

as.matrix(distancias_g) -> distancias_g

d_arbol_globinas <- nj(distancias_g)

arbol_globinas <-ggtree(d_arbol_globinas)

plot(d_arbol_globinas)

colors()

Arbol_globinas_tuneado <-arbol_globinas + 
  geom_nodepoint() + 
  geom_cladelabel(node=1, label="Globina de soya", color="black") +
  geom_cladelabel(node=2, label="Globina de arroz", color="black") +
  geom_cladelabel(node=3, label=" Myoglobina", color="black") +
  geom_cladelabel(node=4, label="Beta globina", color="black") +
  geom_cladelabel(node=5, label="Neuroglobina", color="black") +
  theme_tree(bgcolor="lightslategrey") +
  geom_tippoint(size=1,color="brown",shape=10) 