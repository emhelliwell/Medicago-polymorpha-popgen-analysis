install.packages("maps")
library("maps")
install.packages("mapdata")
library("mapdata")
install.packages("mapproj")
library("mapproj")
install.packages("maptools")
library("maptools")
install.packages("scales")
library("scales")
install.packages("mapplots")
library("mapplots")

#California and Oregon only
Invaded_range <- map("worldHires", xlim=c(-125, -25), ylim=c(30, 45), col="gray90", fill = TRUE)


#This gets the coordinates of our Invaded range
Invaded_range <- map("worldHires", xlim=c(-128, -25), ylim=c(-60, 55), col="gray90", fill = TRUE)


#This gets the coordinates of North America only
Invaded_range <- map("worldHires", xlim=c(-130, -80), ylim=c(25, 50), col="gray90", fill = TRUE)

#This gets the coordinates of South America only
Invaded_range <- map("worldHires", xlim=c(-85, -30), ylim=c(-55, 18), col="gray90", fill = TRUE)

###Adds a scale bar
Invaded_range <- map.scale(x=-120, y = -48, relwidth = 0.3, metric = TRUE, ratio = FALSE)

#North America
Invaded_range <- add.pie(x=-124.25, y=43.870111, z=c(0.193714286, 0.806285714), col=c("white", "gray42"), radius=1.4, labels = NA) #ARC
Invaded_range <- add.pie(x=-123, y=42.83, z=c(0.172285714, 0.827714286), col=c("white", "gray42"), radius=1.4, labels = NA) #MEL
Invaded_range <- add.pie(x=-121.5, y=35, z=c(0.044857143, 0.955142857), col=c("white", "gray42"), radius=1.4, labels = NA) #MAG2
Invaded_range <- add.pie(x=-122.347, y=38.828, z=c(0.072357143 ,0.927642857), col=c("white", "gray42"), radius=1.4, labels = NA) #MLR
Invaded_range <- add.pie(x=-120.8, y=37.883333, z=c(0.384 ,0.616), col = c("white", "gray42"), radius=1.4, labels = NA) #MP-PI577392
Invaded_range <- add.pie(x=-123.258565, y=37.880417, z=c(0.006866667, 0.993133333), col=c("white", "gray42"), radius=1.4, labels = NA) #BHI
Invaded_range <- add.pie(x=-120.83, y=36.6, z=c(0 ,1), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI577391
Invaded_range <- add.pie(x=-119.24995, y=34.148464, z=c(0, 1), col=c("white", "gray42"), radius=1.4, labels = NA) #DCR
Invaded_range <- add.pie(x=-117.075, y=32.772, z=c(0.020142857, 0.979857143), col=c("white", "gray42"), radius=1.4, labels = NA) #SDS
Invaded_range <- add.pie(x=-117.04007, y=34.465937, z=c(0, 1), col=c("white", "gray42"), radius=1.4, labels = NA) #EMO
Invaded_range <- add.pie(x=-111.748964, y=32.878033, z=c(0.161, 0.839), col=c("white", "gray42"), radius=1.4, labels = NA) #PEA
Invaded_range <- add.pie(x=-98.270188, y =30.589912, z=c(0.079, 0.921), col=c("white", "gray42"), radius=1.4, labels = NA) #MAG
Invaded_range <- add.pie(x=-95.401292, y =29.817178, z=c(0.1335, 0.8665), col=c("white", "gray42"), radius=1.4, labels = NA) #MAG3
Invaded_range <- add.pie(x=-86.680737, y=32.600966, z=c(0.166, 0.834), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI566876
Invaded_range <- add.pie(x=-82.85, y=27.91, z=c(0 ,1), col=c("white", "gray42"), radius=1.4, labels = NA) #RIV
Invaded_range <- add.pie(x=-81.6514, y=29.64778, z=c(0 ,1), col=c("white", "gray42"), radius=1.4, labels = NA) #PAL
Invaded_range <- add.pie(x=-81.3144, y=28.89472, z=c(0 ,1), col=c("white", "gray42"), radius=1.4, labels = NA) #STA


#South America
Invaded_range <- add.pie(x=-74.41, y=-11.25, z=c(0.107, 0.893), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI308523
Invaded_range <- add.pie(x=-72.433333, y=-36.533333, z=c(0.007, 0.993), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI368941
Invaded_range <- add.pie(x=-71.6, y=-31.31, z=c(0.079, 0.921), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI368956
Invaded_range <- add.pie(x=-71.56, y=-28.7, z=c(0.025, 0.975), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI368940
Invaded_range <- add.pie(x=-71.533333, y=-32.95, z=c(0.204, 0.796), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI368946
Invaded_range <- add.pie(x=-72.53, y=-31.61, z=c(0.053, 0.947), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI368950
Invaded_range <- add.pie(x=-70.524167, y=-31.625556, z=c(0.086, 0.914), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI368959
Invaded_range <- add.pie(x=-70.8, y=-29.9, z=c(0.486, 0.514), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI368939
Invaded_range <- add.pie(x=-72.85, y=-29.9, z=c(0.236, 0.764), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI368938
Invaded_range <- add.pie(x=-69.9, y=-33.15, z=c(0.191, 0.809), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI368951
Invaded_range <- add.pie(x=-70.7, y=-34.8, z=c(0.122, 0.878), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI368958
Invaded_range <- add.pie(x=-65.98, y=-18.28, z=c(0.018, 0.982), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI478466
Invaded_range <- add.pie(x=-65.95, y=-16.23, z=c(0.031, 0.969), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI478440
Invaded_range <- add.pie(x=-65.216667, y=-20.65, z=c(0.087, 0.913), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI478467
Invaded_range <- add.pie(x=-56.11, y=-34.53, z=c(0.47, 0.53), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI404795
Invaded_range <- add.pie(x=-49.733333, y=-29.35, z=c(0.469, 0.531), col=c("white", "gray42"), radius=1.4, labels = NA) #MP-PI404356


#North America colored
Invaded_range <- add.pie(x=-124.25, y=43.870111, z=c(0.193714286, 0.806285714), col=c("yellow", "red"), radius=1.4, labels = NA) #ARC
Invaded_range <- add.pie(x=-123, y=42.83, z=c(0.172285714, 0.827714286), col=c("yellow", "red"), radius=1.4, labels = NA) #MEL
Invaded_range <- add.pie(x=-121.5, y=35, z=c(0.044857143, 0.955142857), col=c("yellow", "red"), radius=1.4, labels = NA) #MAG2
Invaded_range <- add.pie(x=-122.347, y=38.828, z=c(0.072357143 ,0.927642857), col=c("yellow", "red"), radius=1.4, labels = NA) #MLR
Invaded_range <- add.pie(x=-120.8, y=37.883333, z=c(0.384 ,0.616), col = c("yellow", "red"), radius=1.4, labels = NA) #MP-PI577392
Invaded_range <- add.pie(x=-123.258565, y=37.880417, z=c(0.006866667, 0.993133333), col=c("yellow", "red"), radius=1.4, labels = NA) #BHI
Invaded_range <- add.pie(x=-120.83, y=36.6, z=c(0 ,1), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI577391
Invaded_range <- add.pie(x=-119.24995, y=34.148464, z=c(0, 1), col=c("yellow", "red"), radius=1.4, labels = NA) #DCR
Invaded_range <- add.pie(x=-117.075, y=32.772, z=c(0.020142857, 0.979857143), col=c("yellow", "red"), radius=1.4, labels = NA) #SDS
Invaded_range <- add.pie(x=-117.04007, y=34.465937, z=c(0, 1), col=c("yellow", "red"), radius=1.4, labels = NA) #EMO
Invaded_range <- add.pie(x=-111.748964, y=32.878033, z=c(0.161, 0.839), col=c("yellow", "red"), radius=1.4, labels = NA) #PEA
Invaded_range <- add.pie(x=-98.270188, y =30.589912, z=c(0.079, 0.921), col=c("yellow", "red"), radius=1.4, labels = NA) #MAG
Invaded_range <- add.pie(x=-95.401292, y =29.817178, z=c(0.1335, 0.8665), col=c("yellow", "red"), radius=1.4, labels = NA) #MAG3
Invaded_range <- add.pie(x=-86.680737, y=32.600966, z=c(0.166, 0.834), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI566876
Invaded_range <- add.pie(x=-82.85, y=27.91, z=c(0 ,1), col=c("yellow", "red"), radius=1.4, labels = NA) #RIV
Invaded_range <- add.pie(x=-81.6514, y=29.64778, z=c(0 ,1), col=c("yellow", "red"), radius=1.4, labels = NA) #PAL
Invaded_range <- add.pie(x=-81.3144, y=28.89472, z=c(0 ,1), col=c("yellow", "red"), radius=1.4, labels = NA) #STA


#South America colored
Invaded_range <- add.pie(x=-74.41, y=-11.25, z=c(0.107, 0.893), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI308523
Invaded_range <- add.pie(x=-72.433333, y=-36.533333, z=c(0.007, 0.993), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI368941
Invaded_range <- add.pie(x=-71.6, y=-31.31, z=c(0.079, 0.921), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI368956
Invaded_range <- add.pie(x=-71.56, y=-28.7, z=c(0.025, 0.975), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI368940
Invaded_range <- add.pie(x=-71.533333, y=-32.95, z=c(0.204, 0.796), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI368946
Invaded_range <- add.pie(x=-72.53, y=-31.61, z=c(0.053, 0.947), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI368950
Invaded_range <- add.pie(x=-70.524167, y=-31.625556, z=c(0.086, 0.914), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI368959
Invaded_range <- add.pie(x=-70.8, y=-29.9, z=c(0.486, 0.514), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI368939
Invaded_range <- add.pie(x=-72.85, y=-29.9, z=c(0.236, 0.764), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI368938
Invaded_range <- add.pie(x=-69.9, y=-33.15, z=c(0.191, 0.809), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI368951
Invaded_range <- add.pie(x=-70.7, y=-34.8, z=c(0.122, 0.878), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI368958
Invaded_range <- add.pie(x=-65.98, y=-18.28, z=c(0.018, 0.982), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI478466
Invaded_range <- add.pie(x=-65.95, y=-16.23, z=c(0.031, 0.969), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI478440
Invaded_range <- add.pie(x=-65.216667, y=-20.65, z=c(0.087, 0.913), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI478467
Invaded_range <- add.pie(x=-56.11, y=-34.53, z=c(0.47, 0.53), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI404795
Invaded_range <- add.pie(x=-49.733333, y=-29.35, z=c(0.469, 0.531), col=c("yellow", "red"), radius=1.4, labels = NA) #MP-PI404356
