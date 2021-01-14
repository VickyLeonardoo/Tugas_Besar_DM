wine <- read.csv("C:/Users/roymt/Downloads/wine.csv")
View(wine)
wine.f = wine
wine.f$Type <- NULL
View(wine.f)
wine.stand <- scale(wine.f[-1])
View(wine.stand)
results <- kmeans(wine.stand, 3)
attributes(results)
results$centers
table(wine$Type, results$cluster)
