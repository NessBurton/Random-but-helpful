
library(ggplot2)
library(sf)


# create a square representing one hectare (ha)

square <- list(
  matrix(c(0,0,
           1,0,
           1,1,
           0,1,
           0,0),
         ncol = 2, byrow = TRUE)
)

polygon <- sf::st_polygon(square)

# generate random points at different planting densities
# trees per  (distance apart on average, although we'll always want less regular than this)
# 10,000 (1m apart) e.g. soft fruit
# 4,444 (1.5m apart)
# 2,500 (2m apart) e.g. productive conifers
# 1,600 (2.5m apart) e.g. productive broadleaves
# 1,100 (3m apart) e.g. nature recovery, amenity
# 625 (4m apart) e.g. nature recovery, amenity
# 256 (6m apart) e.g. orchard
# 16 (25m apart) e.g. parkland

points <- sf::st_sample(polygon, size = 100)

ggplot()+
  geom_sf(aes(), data = polygon)+
  geom_sf(aes(), data=points)+
  theme_minimal()
