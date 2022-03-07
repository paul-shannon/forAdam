print(load("gautier-2016.matrices.RData"))

   # both matrices should be 6130 x 7

dim(mtx.gautier.norm)
dim(mtx.gautier.raw)

  # range of values very different, get the Tukey 5 number summary

fivenum(mtx.gautier.norm)
fivenum(mtx.gautier.raw)

  # load a list of 214 RNA-binding proteins
print(load("rbps.RData"))
length(rbps)

mtx.norm.sub <- mtx.gautier.norm[rbps,]
dim(mtx.norm.sub)

tree <- hclust(dist(mtx.norm.sub))
plot(tree, main="gautier normalized, RBPs only")
