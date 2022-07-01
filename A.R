library(readr)
salvador <- read_delim("C:/Users/gabri/Downloads/salvador.csv", 
                       delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(salvador)

library(maptools)
library(sf)
library(maps)
library(ggplot2)

mapa <- map.cities(code_muni=2927408)
mapa <- map('county','Brazil')

a<-st_read(salvador$CodMunicipioIbge[1])

library(readr)
owid_covid_data <- read_csv("C:/Users/gabri/Downloads/owid-covid-data.csv")
View(owid_covid_data)
dados <- filter(owid_covid_data, owid_covid_data$location ==  "Brazil")
View(dados)

library(readxl)
banco <- read_excel("C:/Users/gabri/Downloads/banco.xlsx")
View(banco)


library(htmltools)
library(htmlwidgets)
library(leaflet)
library(leaflet.extras)
library(leaflet.providers)

salvador %>%   leaflet() %>%  addTiles() %>%
  addCircleMarkers(lng=salvador$NumCoordESub[1:10]/100, lat=salvador$NumCoordNSub[1:10]/100, popup = "NomSubEstacao",
                   labelOptions = labelOptions(noHide = F, textsize = "8px"))
