View(airquality)
air <- airquality
library(ggplot2)
library("gridExtra")
air$Month <- factor(air$Month,labels = c("May","June","July","August","September"))

gg1 <- ggplot(air, aes(x=1:nrow(air),y=Temp))+
  geom_line(aes(col=Month))+
  geom_point(aes(col=Month, size=Wind))+
  geom_smooth(method = "loess", col="black")+
  labs(x="Time(days)", y="Temperature(F)")

gg2 <- ggplot(air,aes(x=Solar.R,fill=Month))+
  geom_density(alpha=0.4)+
  labs(x=expression(paste("SOlar radiation(",ring(A),")")),y="Kernel estimate")

gg3 <- ggplot(air, aes(x=Wind, y=Temp, color=Month))+
  geom_point(aes(size=Ozone))+
  geom_smooth(method="lm",level=0.9,fullrange=FALSE,alpha=0.2)+
  labs(x="Winf speed(MPH)",y="Temperature(F)")

grid.arrange(gg1,gg2,gg3)

s <-ggplot(data=air, aes(x=Ozone, y=..density..))
s+geom_histogram(binwidth = 10, aes(fill=Month),color="Black")+
  geom_density(lwd=1, color=4, fill=4, alpha=0.25)

s <-ggplot(data=air, aes(x=Temp, y=..density..))
s+geom_histogram(binwidth = 10, aes(fill=Month),color="Black")+
  geom_density(lwd=1, color=4, fill=4, alpha=0.25)

