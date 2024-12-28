#Example 1
library(MASS)
str(whiteside) #information about structure
plot(whiteside) 

plot(whiteside$Temp, whiteside$Gas,
     type = "p", pch=17, col="springgreen", xlab = "Outside temperature",
     ylab = "Heating gas consumption")
title("Scatter plot")
abline(a=7, b=-0.5, lty=2, col="red")


par(mfrow=c(2,2))
plot(whiteside$Temp, col="#EE9A49")
title("First graph")
boxplot(whiteside$Temp, col="orange") 
title("Second graph")
plot(whiteside$Gas, col="#EE90AA")
title("Third graph")
boxplot(whiteside$Gas, col="red")
title("Fourth graph")


#Task 1
#a)
data(cars93)
par(mfrow=c(1,1)) 
plot(Cars93$Price, Cars93$Max.Price, 
     type = "p", pch=17, col="red", xlab = "Price", 
     ylab = "Max price") 
title("Price relationship") 
points(Cars93$Price, Cars93$Min.Price, col = "blue", pch = 16)


#b)
par(mfrow = c(1,2))
plot(Cars93$Luggage.room, Cars93$RPM, pch = 4, xlab = "Luggage room", ylab = "RPM")
title("Original representation")
plot(Cars93$Luggage.room, Cars93$RPM, xlab = "log Luggage room", ylab = "log RPM", pch=19, col="springgreen", log="xy")
title("Log-log plot")

#c)
par(mfrow = c(1,3))

pie(table(Cars93$Cylinders), col = rainbow(6)) #table - creates a table from data
title("Cylinders")
barplot(table(Cars93$Cylinders), las = 3, cex.names = 0.5, col = heat.colors(6))
title("Cylinders")
hist(Cars93$Price, col = cm.colors(12)) #histogram




#Task 2
#a)
par(mfrow = c(1,2))
hist(mtcars$hp, main = "hist. ilosci koni mechanicznych 1") 
truehist(mtcars$hp, main = "hist. ilosci koni mechanicznych 2")
lines(density(Cars93$Horsepower)) 


#b)
library(MASS)
library("aplpack")
par(mfrow = c(2,2))
plot(Boston$zn, Boston$rad, type = 'p', col = 'orange')
title("Scatterplot")
sunflowerplot(Boston$zn, Boston$rad)
title("Sunflower plot")
boxplot(Boston$crim~Boston$rad, log='y') #boxplot
title("Boxplot")
bagplot(Boston$zn, Boston$rad, cex = 1.5) #2D boxplot
title("bagplot")

#c)
plot(Cars93$Horsepower, Cars93$MPG.city, type = "n",
     xlab = "Horsepower", ylab = "Gas mileage")
points(Cars93$Horsepower, Cars93$MPG.city, pch = as.character(Cars93$Cylinders))


#d)
library("dplyr")
pointer <- Cars93 %>%
  filter(Cylinders == 3)
plot(Cars93$Horsepower, Cars93$MPG.city, type = 'p', pch = 15)
text(x = pointer$Horsepower,
     y = pointer$MPG.city,
     labels = pointer$Cylinders, adj = -0.1, font = 2, cex = 2)
points(pointer$Horsepower, pointer$MPG.city, pch = 15, col = 'red')






