install.packages('boot')
library(boot)
#why simulate data?
#Saves time: write parts of code before you have data
#Baseline for comparisons: check assumptions in your data 
#Test new stats techniques 
#
#Part 1: Normally distributed data ---------------
#Start with groups of data 
#for t-tests or ANOVA
#
#
#Simulate groups wiht 20 observations
group1 <- rnorm(n = 20, mean = 2, sd  = 1)
hist(group1)

#change some parameters
group2 <-  rnorm(n = 20, mean = 5, sd = 1)
group3 <- rnorm(n = 20, mean = 2, sd = 3)

hist(group2)
hist(group3)



#simulate data for linear regeression
#Two continuous normal variables 
# Start simple: assume an intercept of 0
# Call the slope beta1
# x is the predictor variable

# start with a constant slope
beta1 <- 1

#predicotr variable is normally distributed
x <- rnorm(n = 20)

#linear model
y <- beta1*x
y == x #testing y=x, true

#play with different sloptes
beta1 <- 1.5
y <- beta1*x


#add an intercept
beta0 <- 2
y <- beta0 + beta1*x

#adding covariate from a different distribution 




#Part 2: Abundance/count data ####
#Option 1: data are normal-ish
#use round() to remove decimals 
abund1 <- round(rnorm(n = 20, mean = 50, sd = 10))
hist(abund1)


#option 2: Poisson distribution 
abund2 <- rpois(n = 20, lambda = 3) #lambda is similar to the mean for poisson distribution, always has to be positive
barplot(table(abund2))#table is going to count each time number appears to tally up occurrences 


#Sometimes the environemtn affects coutns
#To account for taht, first create our lambdas (means)
#tehn use lambdas to get counts


#use a regression to get intial values
pre.lambda <- beta0 + beta1*x
#inverse log make lambdas positive
lambda <- exp(pre.lambda) #exp is inverse log

#use created lambdas to get coutns
abund3 <- rpois(n = 20, lambda =lambda)
hist(abund3)



#Part 3: Occupancy, presence/absence data ####
#Option 1: get probability from beta distribution
probs <- rbeta(n = 20, shape = 1, shape2 =1)
occ1 <- rbinom(n = 20, size = 1, prob = probs)
