
install.packages("extrafont")
library(extrafont)

#font_import(paths = "/Library/Fonts") #Mac
#font_import(paths = "C:/Windows/Fonts") # Windows

#y

extrafont::loadfonts()

df_fonts <- extrafont::fonttable()
