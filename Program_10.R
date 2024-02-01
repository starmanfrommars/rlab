rm(list =ls())
install.packages("ggplot2")
install.packages("e1071")
install.packages("moments")
install.packages("reshape")
library(ggplot2)
library(e1071)

mtcars
?mtcars

carData <-mtcars

number.of.observations <- dim(carData)[1]
number.of.variables <- dim(carData)[2]

car.with.largest.hp <- row.names(subset(carData, carData$hp == max(carData$hp)))
car.with.largest.hp

car.with.lowest.hp <- row.names(subset(carData, carData$hp == min(carData$hp)))
car.with.lowest.hp

hist(carData$mpg, col="green", border="black", prob=TRUE)
lines(density(carData$mpg), col="chocolate3")
skewness(carData$mpg, type = 2)
kurtosis(carData$mpg, type=2)

hist(carData$disp, col="green", border="black", prob=TRUE)
lines(density(carData$disp), col="chocolate3")
skewness(carData$disp, type = 2)
kurtosis(carData$disp, type=2)

hist(carData$hp, col="green", border="black", prob=TRUE)
lines(density(carData$hp), col="chocolate3")
skewness(carData$hp, type = 2)
kurtosis(carData$hp, type=2)

hist(carData$drat, col="green", border="black", prob=TRUE)
lines(density(carData$drat), col="chocolate3")
skewness(carData$drat, type = 2)
kurtosis(carData$drat, type=2)

hist(carData$wt, col="green", border="black", prob=TRUE)
lines(density(carData$wt), col="chocolate3")
skewness(carData$wt, type = 2)
kurtosis(carData$wt, type=2)

hist(carData$qsec, col="green", border="black", prob=TRUE)
lines(density(carData$qsec), col="chocolate3")
skewness(carData$qsec, type = 2)
kurtosis(carData$qsec, type=2)

carData.4cyl.hp <- subset(carData, carData$cyl==4)["hp"]
carData.8cyl.hp <- subset(carData, carData$cyl==8)["hp"]

diff.gross.hp <- round(mean(carData.8cyl.hp[,1])-mean(carData.4cyl.hp[,1]))
print(diff.gross.hp)

diff.sd <- round(sd(carData.8cyl.hp[,1]) - sd(carData.4cyl.hp[,1]))
print(diff.sd)

print(cor(carData$mpg, carData$cyl, method = "pearson"))
print(cor(carData$mpg, carData$disp, method = "pearson"))
print(cor(carData$mpg, carData$hp, method = "pearson"))
print(cor(carData$mpg, carData$drat, method = "pearson"))
print(cor(carData$mpg, carData$wt, method = "pearson"))
print(cor(carData$mpg, carData$qsec, method = "pearson"))

print(cor(carData$cyl, carData$disp, method = "pearson"))
print(cor(carData$cyl, carData$hp, method = "pearson"))
print(cor(carData$cyl, carData$drat, method = "pearson"))
print(cor(carData$cyl, carData$wt, method = "pearson"))
print(cor(carData$cyl, carData$qsec, method = "pearson"))

print(cor(carData$drat, carData$hp, method = "pearson"))
print(cor(carData$drat, carData$drat, method = "pearson"))
print(cor(carData$drat, carData$wt, method = "pearson"))
print(cor(carData$drat, carData$qsec, method = "pearson"))

print(cor(carData$hp, carData$drat, method = "pearson"))
print(cor(carData$hp, carData$wt, method = "pearson"))
print(cor(carData$hp, carData$qsec, method = "pearson"))

print(cor(carData$drat, carData$wt, method = "pearson"))
print(cor(carData$drat, carData$qsec, method = "pearson"))

print(cor(carData$wt, carData$qsec, method = "pearson"))

#install.packages("reshape")
library(moments)
library(reshape)

cor(carData)
cor_df <- round(cor(carData), 2)
melted_cormat <- melt(cor_df)


#heatmap
ggplot(data = melted_cormat, aes(x=X1, y=X2,fill=value))+
  geom_tile()+
  geom_text(aes(X2,X1,label=value),size=5)+
  scale_fill_gradient2(low="blue", high="red", limit=c(-1,1), name="correlation")+
  theme(axis.title.x = element_blank(), axis.title.y = element_blank(), panel.background = element_blank())
