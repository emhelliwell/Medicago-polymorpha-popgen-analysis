

install.packages("hierfstat")
library("hierfstat")

library("poppr")

library("magrittr")


pops_wout_USDA <- read.csv("Mpol_wout_USDA_filtered_invaded_Fst.csv", header = TRUE)
head(pops_wout_USDA)


#Run pairwise Fst analysis
pairwise_Fst_wout_USDA <- genet.dist(pops_wout_USDA, method = "WC84")


#Creating the heatmap
library(gplots)
library(pvclust)
install.packages("heatmap.2")
library("heatmap.2")

data <- read.csv("native_deep_pops_corval_labeled.csv", stringsAsFactors = FALSE)
rnames <- data[,1]                            # assign labels in column 1 to "rnames"
mat_data <- data.matrix(data[,2:ncol(data)])  # transform column 2-5 into a matrix
rownames(mat_data) <- rnames  

#first import table with your data
#then make data into matrix
#depending on whether rownames are part of your table, you would want to change this command to
# 1:ncol or 2:ncol
#mat_fullPID <- data.matrix(full_PID_table_sorted_renamed[,1:ncol(full_PID_table_sorted_renamed)]) 

# creates a own color palette from red to green
my_palette <- colorRampPalette(c("yellow", "red", "purple"))(n = 299)

col_breaks = c(seq(0, 0.3, length=100),  # for yellow
               seq(0.31, 0.5,length=100),           # for red
               seq(0.51, 0.95,length=100))             # for purple

# creates a own color palette from white to black
my_palette <- colorRampPalette(c("white", "grey50", "black"))(n = 299)

col_breaks = c(seq(0, 0.3, length=100),  # for white
               seq(0.31, 0.5,length=100),           # for grey
               seq(0.51, 0.95,length=100))             # for black


# creates a PDF image, change dimensions as necessary
png("../Mpol GBS project/Mpol_deep_pops_bw.png",    # create PDF for the heat map        
    width = 5*300,        # 5 x 300 pixels
    height = 5*300,
    res = 300,            # 300 pixels per inch
    pointsize = 8)        # smaller font size

heatmap.2(mat_data,
          hclustfun = function(x) hclust(x,method = 'average'),
          #ColSideColors = c(     #you probably want to remove side colors, or if you want them you should recode based on the order of columns in your imported table
          notecol="black",      # change font color of cell labels to black
          density.info="none",  # turns off density plot inside color legend
          na.color="white",      #sets NA values as white
          trace="none",         # turns off trace lines inside the heat map
          margins =c(16,9),     # widens margins around plot
          col=my_palette,       # use on color palette defined earlier
          dendrogram="column")     # only draw a column dendrogram

dev.off() 


#optional transposition of table to get bootstraps for row or columns
mat_data_t <- t(mat_data)

#this will give you bootstraps for your clustering
fit2 <- pvclust(mat_data_t, nboot = 1000)
plot(fit2) # dendogram with p values
# add rectangles around groups highly supported by the data, change your alpha value as you wish
#pvrect(fit2, alpha=.90)

###Creating a histogram of distributions
pops_wout_USDA <- read.csv("Mpol_pairwise_Fst_bycluster.csv", header = TRUE)
head(pops_wout_USDA)

####Black 'n white
library("ggplot2")
ggplot(pops_wout_USDA, aes(x=Fst, fill=Category)) +
  geom_histogram(binwidth=.025, position="dodge") +
  scale_color_manual(values=c("black", "black", "black"))+
  scale_fill_manual(labels=c("Cluster 1 vs Cluster 1", "Cluster 1 vs Cluster 2", "Cluster 2 vs Cluster 2"), values=c("grey70", "black", "grey40")) +
  labs(x = "Pairwise Fst", y = "Count") +
  geom_density(aes(y=0.04*..count..), alpha = 0.005, size = 0.5, adjust = 4) +
  scale_y_continuous(expand = c(0, 0), limits = c(0, 20)) +
  scale_x_continuous(expand = c(0, 0), limits = c(0, 1)) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) +
  theme(axis.title = element_text(face = "bold", color="black", size=18)) +
  theme(axis.title.y = element_text(angle=90)) +
  theme(legend.title=element_text(face = "bold", colour="black",size=16)) +
  theme(legend.text = element_text(colour="black", size = 12)) +
  theme(axis.text = element_text(colour = "black", size = 12, face = "bold"))



