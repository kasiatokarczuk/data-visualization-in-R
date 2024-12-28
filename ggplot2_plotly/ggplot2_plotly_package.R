library('ggplot2') 
library('tidyverse')
library('ggthemes')
library('plotly')



# Example 1
#a)
ir_pl<-ggplot(iris, aes(Sepal.Width, fill = Species)) +
  geom_bar(position = "fill")+
  scale_fill_brewer()
ir_pl+
  theme(legend.position=c(0.8, 0.7))

#b) 
ir_pl+
  ggtitle("Iris plot")+
  theme(
    rect = element_rect(fill = "light blue"),
    legend.key = element_rect(color = NA),
    axis.text=element_text(color="dark blue"),
    plot.title=element_text(size=16, face="italic", color="dark blue"),
    legend.margin=margin(10, 30, 20, 20, "pt")
  )

#c)
ir_pl+
  theme_dark()


#d)
global_mean<-mean(iris$Sepal.Width)
ir_pl+
  geom_vline(xintercept=global_mean, color="black", linetype=4)

#e)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species))+
  geom_jitter() +
  geom_smooth(method = "lm", se = FALSE) +
  coord_fixed(ratio=1)





# Task 1
#a,b)
ggplot(mtcars, aes(x= wt, y = mpg, color = as.factor(cyl))) + # converting a numeric variable to a factor variable
                                                              # to indicate that the values of the number of cylinders should be treated as categories rather than continuous numbers
  geom_point() +
  ggtitle("Scatterplot") +
  theme(
    plot.title=element_text(size=14, face="bold.italic", color="red"),
    axis.title.x=element_text(size=14, face="bold", color = "blue"),
    axis.title.y=element_text(size=14, face="bold", color = "#993333"),
    plot.background  = element_rect(fill = "light blue"),
    panel.background = element_rect(fill = "light yellow"),
    panel.border = element_rect(colour = "grey", fill=NA) 
  )+
  theme_void() 

#c)
data(mtcars)

ggplot(mtcars, aes(x = qsec, y = mpg)) +
  geom_point() +  
  geom_hline(yintercept = median(mtcars$mpg), color = "red", linetype=1) +  
  geom_hline(yintercept = mean(mtcars$mpg), color = "blue", linetype = 1) 

#d)
p <- ggplot(mtcars, aes(wt, mpg, group = cyl, color = as.factor(cyl))) +
  geom_point() +
  geom_smooth(method = "loess", se=FALSE) +geom_smooth(method = "lm", se=FALSE)
  labs(title = "Regression line for each group",
       x = "Car Weight (1000 lbs)",
       y = "Miles per Gallon",
       color = "Cylinders")
p




# Example 2
#a)
plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length)
plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length)%>%
  add_markers()

#b)
iris%>%
  filter(Species =="setosa")%>%
plot_ly(x = ~Sepal.Width)%>%  
  add_histogram(nbinsx=6, color = I("darkgreen"), opacity = 0.5)  

#c) 
plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length)%>%
  add_markers(marker = list(size = 12,
                            color = 'rgba(255, 182, 193, .9)',
                            line = list(color = "rgba(100, 20, 20, .5)",
                                        width = 5)))%>% 
  layout(title = "Scatterplot")


# Task 2
#a)
str(mtcars)
mtcars%>%
  filter(cyl==4)%>%
  plot_ly(x=~disp, y=~mpg, color=~am) %>%
  add_markers(colors="Set1") %>% 
layout(title = "New colors")

#lub
str(mtcars)
mtcars%>%
  filter(cyl==4)%>%
  plot_ly(x=~disp, y=~mpg, color=~as.factor(am),colors="Set1") %>%
  add_markers() %>% 
  layout(title = "New colors")


#b)
plot_ly(data = mtcars, x=~disp, y=~mpg )%>%
  add_histogram2d(nbinsx=3, nbinsy=3)

#c)
plot_ly(data = mtcars, y=~mpg, x=~cyl)%>%
  add_boxplot()%>%
  layout(title = "Boxplot")