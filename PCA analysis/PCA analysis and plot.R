install.packages("poppr")
library("poppr")
install.packages("vcfR")
library("vcfR")

#Data file 
Mpol_wout_USDA <- read.csv("Mpol_deep_pops_labels.csv", header = TRUE)
str(Mpol_wout_USDA)

#Convert a dataframe to a genind object
Mpol_genind <- df2genind(
  Mpol_wout_USDA[, -(1:2)],        # remove first two columns
  ncode = 1,
  ind.names = Mpol_wout_USDA[[1]], # pull out the vector of individuals
  pop = Mpol_wout_USDA[[2]],       # pull out the population vector
  strata = Mpol_wout_USDA[2],      # Set the strata from the second column
  NA.char = "0",
  ploidy = 2,
  type = "codom"                   # SNP data are codominant
)


Mpol_genind

#Running a PCA
p_Mpol <- tab(Mpol_genind, freq = TRUE, NA.method = "mean")
pca_Mpol <- dudi.pca(p_Mpol, center = TRUE, scale = FALSE)
pca_Mpol

#Plot individuals
s.label(pca_Mpol$li)

#Extract PC coordinates and download
print(pca_Mpol$li)
#coordinates <- as.data.frame(pca_Mpol$li)
#write.csv(coordinates, file = "Mpol_deep_pops_PCA_coordinates.csv")

#For the PCA plot
s.class(pca_Mpol$li, pop(Mpol_genind), col=virid(38), origin = c(0,0), include.origin = TRUE)

#Alternatively
s.class(pca_Mpol$li, fac = pop(Mpol_genind), 
        col=transp(virid(38), 1),
        axesel=FALSE, cstar=0, cpoint=3)






