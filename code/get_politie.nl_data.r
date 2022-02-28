## information regarding dataset 
**police open data:**  https://data.politie.nl/portal.html?_la=nl&_catalog=Politie&tableId=47022NED&_theme=97
**example data:** https://data.politie.nl/#/Politie/nl/dataset/47022NED/table?ts=1645109405238 
  
  
# Run once:
install.packages("cbsodataR")
library(cbsodataR)


# Downloading table list
toc <- cbs_get_toc()
head(toc)

catalogs <-  cbs_get_catalogs()
View(catalogs) 

# Downloading entire dataset (can take up to 30s)
data <- cbs_get_data("47022NED", catalog = "politie")
head(data)

?cbsodataR

# Downloading metadata
metadata <- cbs_get_meta("47022NED")
head(metadata)


# Downloading a subset
data <- cbs_get_data("47022NED", catalog = "politie",
                     perioden = "2021MM12", 
                     select = c("WijkenEnBuurten", "Perioden",	"SoortMisdrijf"))
head(data)