

#first, load in the library
library(bio3d)
#then, assign a protein of interest (e.g. 4AKE) to object sX
sX <- read.pdb("protein")
#trim the file so that 
sX.chainA <- trim.pdb(sX, chain="A", elety="CA")
#plot
plotb3(sX.chainA$atom$b, sse=sX.chainA, typ="l", ylab="Bfactor")

#For example:

sX <- read.pdb("8I8Y")
sX.chainA <- trim.pdb(sX, chain="A", elety="CA")
plotb3(sX.chainA$atom$b, sse=sX.chainA, typ="l", ylab="Bfactor")

sX <- read.pdb("7XM8")
sX.chainA <- trim.pdb(sX, chain="A", elety="CA")
plotb3(sX.chainA$atom$b, sse=sX.chainA, typ="l", ylab="Bfactor")

protplot <- function(x){
  sX <- read.pdb("7XM8")
sX.chainA <- trim.pdb(sX, chain="A", elety="CA")
plotb3(sX.chainA$atom$b, sse=sX.chainA, typ="l", ylab="Bfactor")
}

protplot
