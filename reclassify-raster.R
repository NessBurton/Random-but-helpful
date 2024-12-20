library(raster)
library(RStoolbox)

wd <- "~/ArcGIS/Projects/Tree-Species-analysis"
dirData <- paste0(wd,"/data-out/")

AL <- raster(paste0(dirData,"AL2.tif"))

plot(AL)
summary(values(AL))
hist(AL)

m <-  c(0,55,0,
        55,80,3,
        80,110,4,
        110,150,2,
        150,250,0)

rmatrix <- matrix(m, ncol=3, byrow = TRUE)

ALrc <- reclassify(AL,rmatrix) 
plot(ALrc)
