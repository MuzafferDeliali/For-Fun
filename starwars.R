library(dplyr)
library(ggplot2)
library(tidyverse)
library(rstatix)
View(starwars)

gender <- as.factor(starwars$gender)
gender <- na.omit(gender)
plot(gender, 
     pty = "L" ,
     xlab = "Gender" , 
     ylab = "How many" , 
     main = " Gender-Size graph")

ratio <- prop.table(table(gender))
genders = c("Feminine" , "Masculine") 
a <- sprintf("%s = %s%3.1f" ,genders , "%" , as.numeric(ratio)*100 )

pie(ratio ,
    labels = a ,
    radius = 0.7)

outliners <- identify_outliers(starwars["mass"])
outliners
new <- starwars %>% filter(mass < 300)

p <- ggplot(new, aes(x= mass , y = height , colour=species)) +
  geom_point()

p + ggtitle("Mass/Height")+
  theme(plot.title = element_text(hjust = 0.5)) +
  xlab("Mass(kg)") + ylab("Height(cm)")

race <- prop.table(table(starwars$species))

starwars %>%
  mutate(name = fct_other(name, race)) %>%
  ggplot( aes(x=species, y=race)) +
  geom_bar(stat="identity", fill="#f68060", alpha=.6, width=.4) +
  coord_flip() +
  xlab("") +
  theme_bw()


starwars %>%
  filter( mass <300 ) %>%
  ggplot( aes(y=height)) +
  geom_density(fill="#69b3a2", color="#e9ecef", alpha=0.8) + 
  ggtitle("Star Wars height distribution")


Human <- filter(starwars, species == "Human")

Human %>%
  ggplot(aes(x=height)) +
  geom_histogram(fill="#69b3a2", color="#e9ecef", alpha=0.8)

Human <- na.omit(Human)

p <- ggplot(Human , aes(x=mass, y=height))+
  geom_point() +
  geom_label(
    label=Human$name, 
    nudge_x = 7, nudge_y = 0, size = 3) 
p

