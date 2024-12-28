data(mtcars)
str(mtcars)
summary(mtcars)

library(ggplot2)


# Example 1
#a) 
  ggplot(data=mtcars, aes(x=cyl, y=mpg)) +
  geom_point(shape=1, size=4)

#b)
ggplot(data=mtcars, aes(x=wt, y=mpg, color = disp, size=disp)) +
  geom_point(alpha=0.8)+ 
  geom_smooth() 

#c)
pl<-ggplot(mtcars, aes(wt, mpg)) 
pl+geom_point(aes(alpha=cyl)) 
pl+geom_point(aes(shape=as.factor(cyl)))+
  scale_x_log10()
pl+geom_text(aes(label=cyl))
pl+geom_point(aes(size= hp/wt))
dgreen<-"#013220"
pl+geom_point(color=dgreen, alpha=0.6, size=10, shape=1)
pl+ geom_text(label=rownames(mtcars)) 

#d)
m_colors <- c(automatic = "#378AB1", manual = "#E2111C")
ggplot(mtcars, aes(as.factor(cyl), fill = as.factor(am))) +
  geom_bar(position="dodge") +
  labs(x = "Number of Cylinders", y = "Count")+
scale_fill_manual("Type", values = m_colors)



# Task 1
library('ggplot2')
library('tidyverse')
library('ggthemes')

ggplot(diamonds, aes(x = carat, y = price)) +geom_point() +geom_smooth()


ggplot(diamonds, aes(x = carat, y = price, color = clarity)) +
  geom_point( alpha = 0.5, size = 3) +
  geom_smooth()


ggplot(diamonds, aes(x = carat, y = price, color = clarity, size = cut)) +
  geom_point( alpha = 0.5 ) +
  scale_colour_manual(values = rainbow(8))



ggplot(diamonds, aes(x = carat, y = price, color = clarity, size = cut)) +
  geom_point( alpha = 0.5 ) +
  scale_colour_manual(values = rainbow(8)) +
  scale_x_log10() +
  scale_y_log10()



ggplot(diamonds, aes(as.factor(cut), fill = as.factor(clarity))) +
  geom_bar(position="dodge") 
ggplot(diamonds, aes(as.factor(cut), fill = as.factor(clarity))) +
  geom_bar()


# Example 2
#a)
ggplot(mtcars, aes(mpg, 0)) +
  geom_jitter(color="green") +
  ylim(-2,2)+
  xlab("Miles per gallon")
#b)
ggplot( mtcars , aes(x=mpg, y=wt, color=as.factor(cyl) )) + 
  geom_point(size=3) + 
  facet_wrap(~cyl)+
  ggtitle("Mtcars plot")
#c)
ggplot( mtcars , aes(x=mpg, y=wt )) + 
  geom_point() +
  facet_grid( cyl ~ gear)
#d)
ggplot(mtcars, aes(x=mpg, fill=factor(am))) + 
  geom_histogram(binwidth=3) +
  facet_wrap(~ cyl)+
  scale_fill_brewer(type = 'qual')
#e)
p = ggplot(mtcars, aes(x=mpg, fill=factor(am))) + geom_histogram(binwidth=5)
ggsave(filename="auta.png", p)



# Task 2
ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() +
  facet_wrap(~clarity)


ggplot(diamonds, aes(x= carat, y = price)) +
  geom_point() +
  ggtitle("Diamonds scatterplot") +
  xlab("Weight carats")

ggplot(diamonds, aes(x=price))+
  geom_histogram(binwidth = 200)+
  facet_wrap(~clarity)


ggplot(diamonds, aes(x=price, color = cut)) +
  geom_density()



ggplot(diamonds, aes(x=color, y =price)) +
  geom_boxplot() +
  scale_y_log10()



m_plot <- ggplot(diamonds, aes(x=carat, y=price))+
  geom_point()
ggsave(filename="mp_plot.png", m_plot)
ggsave(filename="mp_plot.jpeg", m_plot)


ggplot(diamonds, aes(x=cut, y = clarity))+
  geom_jitter(alpha= 0.03)




# Task 3
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color = Species)) +
  geom_point(alpha = 0.5) +
  geom_jitter(width = 0.2, shape = 12 )



ggplot(iris, aes(x=Sepal.Length, ..density..)) +
  geom_histogram(binwidth = 1, fill = 'darkblue')



ggplot(iris, aes(x=Sepal.Width, fill=Species)) +
  geom_histogram(binwidth = 0.5, position = "identity", alpha = 0.2)