library(robis)
?occurrence

ptevol <- occurrence("Pterois volitans")
View(ptevol)

islands <- occurrence(geometry = "POLYGON ((102.68921 6.05862, 102.57111 5.95346, 103.07785 5.49980, 103.25226 5.62555, 103.07648 5.87970, 102.68921 6.05862))")

map_leaflet(islands)

names(islands)
table(islands$phylum)

records <- occurrence("Xiphias gladius")
View(records)

map_ggplot(records)

rockfish <- occurrence("Sebastes")
