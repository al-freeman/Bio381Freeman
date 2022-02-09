#Vectors review
install.packages("tidyverse")
library(tidyverse)
##type/numeric/integer/double
a <- c(10:30)

#type character
b <-  c("carrots", "lettuce", "tomatos")

#Binary/boolean/logical type
c <- c(TRUE, TRUE, FALSE)

typeof(c)#tells you type of data

#vectors can only contain one data type

d <- c(4, 8.1, "yellow", FALSE)
d #R forces these into one data type--character is the usual choice 


#Question 1
x <- c(1.1)
a <- c(2.2)
b <- c(3.3)
z <- x^a^b
z
z <- (x^a)^b
z  
z <- 3*x^3+2*x^2+1
z


#Question 2
#a
q <- c(rep(1:8), rep(7:1))        
q
#b
z <- rep(1:5, c(1,2,3,4,5))
z
#c
x <- rep(5:1, c(1,2,2,4,5))
x


#Question 3
x <- runif(1,1,10)
y <- runif(1,1,20)
r <- sqrt(x^2+y^2)
r
t <- (atan(y/x))
t


#Question 4
queue <- c("sheep", "fox", "owl", "ant") 
queue <- c(queue, "serpent")
queue <- queue [queue!="sheep"]
queue <- c("donkey", queue)
queue <- queue [-5]
queue <- queue[-3]
queue <- append(queue, "aphid", after = 2)
which(queue == "aphid")


#Question 5
z <- rep(1:100)

y <- seq(1:100) %>%  filter(x %% 2 !=0 & x %% 3 !=0 &x %% 7 !=0)

z <- Filter(function(i) { all(i %% c(2,3,7) != 0) }, seq(100))

z <- 
z          
