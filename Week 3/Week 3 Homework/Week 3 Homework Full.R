library(bio3d)
sX <- read.pdb("4AKE")  # kinase with drug
sX.chainA <- trim.pdb(sX, chain="A", elety="CA")
plotb3(sX.chainA$atom$b, sse=chain, typ="l", ylab="Bfactor")


s1 <- read.pdb("4AKE")  # kinase with drug
s1.chainA <- trim.pdb(s1, chain="A", elety="CA")
s1.b <- s1.chainA$atom$b
plotb3(s1.b, sse=s1.chainA, typ="l", ylab="Bfactor")


pdbstructure <- function(x){
  pdbcode <- x
  pdb <- read.pdb(pdbcode)
  chain <- trim.pdb(pdb, chain="A", elety="CA")
  plotb3(chain$atom$b, sse=chain, typ="l", ylab="Bfactor")
}

pdbstructure("8G25")
