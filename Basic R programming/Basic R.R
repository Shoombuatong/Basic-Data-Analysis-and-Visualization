# Filename: ProgrammingBasics.R
 
# ---Simple Calculations---
x <- 2
y <- 3
x + y
x * y
 
# ---Data Structures---
 
# Vectors
workshop <- c(1, 2, 1, 2, 1, 2, 1, 2)
print(workshop)
workshop
 
gender <- c("f", "f", "f", "f", "m", "m", "m", "m")
q1 <- c(1, 2, 2, 3, 4, 5, 5, 4)
q2 <- c(1, 1, 2, 1, 5, 4, 3, 5)
q3 <- c(5, 4, 4, NA, 2, 5, 4, 5)
q4 <- c(1, 1, 3, 3, 4, 5, 4, 5)
 
# Selecting Elements of Vectors
q1[5]
q1[ c(5, 6, 7, 8) ]
q1[5:8]
q1[gender == "m"]
mean( q1[ gender == "m" ])
 
# ---Factors---
 
# Numeric Factors
 
# First, as a vector
workshop <- c(1, 2, 1, 2, 1, 2, 1, 1)
workshop
table(workshop)
mean(workshop)
gender[workshop == 2]
 
# Now as a factor
workshop <- c(1, 2, 1, 2, 1, 2, 1, 1)
workshop <- factor(workshop)
workshop
table(workshop)
mean(workshop) 
sd(workshop) 
gender[workshop == 2]
 
# Recreate workshop, making it a factor
# Recreate it with just the levels it
# curently has.
workshop <- c(1, 2, 1, 2, 1, 2, 1, 1)
workshop <- factor(
workshop,
levels = c( 1,  2),
labels = c("R","SAS")
)

# including levels that don't yet exist.
workshop <- c(1, 2, 1, 2, 1, 2, 1, 1)
workshop <- factor(
workshop,
levels = c( 1,  2),
labels = c("R","SAS")
)


workshop <- c(1, 2, 1, 2, 1, 2, 1, 1)
workshop <- factor(
workshop,
levels = c( 1,   2,     3,      4),
labels = c("R", "SAS", "SPSS", "Stata")
)
 

workshop
table(workshop)
gender[workshop == 2]
gender[workshop == "SAS"]
 
# Data Frames
mydata <- data.frame(workshop, gender, q1, q2, q3, q4)
mydata
 
names(mydata)
row.names(mydata)
 
# Selecting components by index number
mydata[8, 6] #8th obs, 6th var
mydata[ , 6] #All obs, 6th var
mydata[ , 6][5:8] #6th var, obs 5:8
 
# Selecting components by name
mydata$q1
mydata$q1[5:8]
 
# Example renaming gender to sex while
# creating a data frame (left as a comment)
#
# mydata <- data.frame(workshop, sex = gender,
#   q1, q2, q3, q4)
 
# Matrices
 
# Creating from vectors
mymatrix <- cbind(q1, q2, q3, q4)
mymatrix
dim(mymatrix)
 
# Creating from matrix function
# left as a comment so we keep
# version with names q1, q2...
#
# mymatrix <- matrix(
#   c(1, 1, 5, 1,
#     2, 1, 4, 1,
#     2, 2, 4, 3,
#     3, 1, NA,3,
#     4, 5, 2, 4,
#     5, 4, 5, 5,
#     5, 3, 4, 4,
#     4, 5, 5, 5),
#  nrow = 8, ncol = 4, byrow = TRUE)
# mymatrix
 
table(mymatrix)
mean(mymatrix, na.rm = TRUE)
cor(mymatrix, use = "pairwise")
round(cor(mymatrix, use = "pairwise"),3) 

# Selecting Subsets of Matrices
mymatrix[8, 4]
mymatrix[5:8, 3:4]
mymatrix[ ,4][1:4]
mymatrix[ 1:4,4]
mymatrix[ 1:4,-4]
# Matrix Algebra
 
mymatrixT <- t(mymatrix)
mymatrixT
 
# ---Controlling Functions---
 
# Controlling Functions with Arguments
 
help("mean")
mean(x = q3)
mean(x = q3,na.rm = TRUE)
mean(1, 2, 3)
mean( c(1, 2, 3) )
mean( 1:3 )
 
# Controlling Functions With Formulas
data1 <- data.frame(q1, q2, q3, q4)
Model1 <- lm( q4 ~ q1 + q2 + q3, data = data1 )
class(Model1)
summary(Model1)

gender <- c("f", "f", "f", "f", "m", "m", "m", "m")
data2 <- data.frame(q1, q2, q3, q4, gender)
t.test(q1 ~ gender, data = data2)
t.test(q2 ~ gender, data = data2)
t.test(q3 ~ gender, data = data2)
t.test(q4 ~ gender, data = data2)

Model2 <- lm( formula = gender ~ q1 + q2 + q3+ q4 ,data = data2)
class(Model2)
summary(Model2)

# Simple linear model
height = c(176, 154, 138, 196, 132, 176, 181, 169, 150, 175)
bodymass = c(82, 49, 53, 112, 47, 69, 77, 71, 62, 78)
M <- lm(formula = height ~ bodymass)
summary(M)

# Simple linear model
setwd('D:\\workshop')
dataset = read.csv("eGFR.csv", header=T,colClasses = c("numeric", "numeric", "numeric","numeric", "numeric"))

simple.fit = lm(eGFR59~eGFR55, data=dataset)
summary(simple.fit)

multi.fit1 = lm(eGFR59~eGFR58+eGFR57+eGFR56+eGFR55, data=dataset)
summary(multi.fit1)

multi.fit2 = lm(eGFR59~eGFR58+eGFR57+eGFR55, data=dataset)
summary(multi.fit2)
