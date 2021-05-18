#Assignment Operators#
x <- 2
x

x = 2
x
# Assigning character to x #
x <- "IMS"
x
x = "IMS"
x
# Arithmatic addition operator #
a <- 5
b <- 6
a + b
# Arithmatic subtraction operator #
a <- 5
b <- 6
a - b
# Arithmatic multiplication operator #
a <- 5
b <- 6
a * b
# Arithmatic division operator #
a <- 5
b <- 6
a / b
# Arithmatic exponentioation operator #
a <- 5
b <- 6
a^b
# Arithmatic modulo operator #
a <- 5
b <- 6
a%%b
# Relational greater than Operator#
a <- 5
b <- 6
a > b
# Relational greater than equal to Operator#
a <- 5
b <- 6
a >= b
# Relational less than Operator#
a <- 5
b <- 6
a < b
# Relational less than equal to Operator#
a <- 5
b <- 6
a <= b
# Relational equal to Operator#
a <- 5
b <- 6
a == b
# Relational not equal to Operator#
a <- 5
b <- 6
a != b
# Logical Operators #
# Check AND operator with z = 1 #
z <- 1
(z > 2) & (z > 5)
# Check AND operator with z = 5 #
z <- 5
(z > 4) & (z < 7)

# Logical Operators #
# Check OR operator with z = 1 #
z <- 1
(z > 2) | (z > 5)
# Check OR operator with z = 5 #
z <- 5
(z > 4) | (z < 7)

# Logical Operators #
# Check NOT operator with z = 1 #
z <- 1
!((z > 2) & (z > 5))

# Logical Operators #
# Check Logical AND operator with z = 1 #
z <- 1
(z > 2) && (z > 5)
# Check Logical AND operator with z = 5 #
z <- 5
(z > 4) && (z < 7)

# Check Logical OR operator with z = 1 #
z <- 1
(z > 2) || (z > 5)
# Check Logical OR operator with z = 5 #
z <- 5
(z > 4) || (z < 7)


# Different Data type #
# character data types #
a <- "IMS"
#print class of a #
print(class(a))

# Numeric data types #
a <- 15.4
#print class of a #
print(class(a))

# Integer data types #
a <- 2L
#print class of a #
print(class(a))

# Logical data types #
a <- TRUE
# print class of a #
print(class(a))

# complex data types #
a <- 4+5i
# print class of a #
print(class(a))
#as.function() and is.function() #
# write a numeric vector #
x <- c(1,5,7,6,2,4,8)
x
# check the type of the vector #
is.numeric(x)
# Convert a numeric vetor to factor #
as.factor(x)

# Write a character vector #
y <- c("BA","FM","CFA","CIMA","DS")
# check the type of the vector #
is.character(y)
# Convert a character vector to factor #
as.factor(y)

# Vector #
# Assigning a numeric vector to workshop #
workshop <- c(1,2,1,2,1,2,1,2) 
workshop
class(workshop)
# Assigning a character vector to gender including NA #
gender <- c("f","f","f",NA,"m","m","m","m") 
gender
class(gender)
x = c(1,2,3)
x
# Vector replication #
rep(1:3, times = 2)
# Vector Operations #
#Numeric vector of continuous sequence #
x = c(1:5)
x
#Numeric vector of continuous sequence along with additional numbers#
y=c(1:5,10,20)
y
# class of vector of mixed datatype #
a <- c(1,4,2,"a",3+5i,TRUE)
a
class(a)
# Combining Vectors #
x = c(1:5)
x
z = c("aa","bb","cc","dd","ee")
z
a <- c(x,z)
a
#Vector Arithmatic #
#Create x vector #
x = c(1:5)
# Multiply x by 5 # 
5*x
# Subtract x from 10 #
10-x
# Add 15 to x #
15+x

# Arithmetic Operations using vector #
a <- c(1,5,9)
b <- c(3,7,11)
# addition operator #
a + b
# Subtraction operator #
a - b
# Multiplication operator #
a * b
# Division operator #
a/b
# Exponentiation operator #
a^b
# Modulo operator #
a%%b
#  Relational Operations using vector #
a <- c(1.5,3.8,6.7)
b <- c(2.1,8.9,4.1)
# Greater than Operator #
a > b
# Greater than equal to Operator #
a >= b
# Less than Operator #
a < b
# Less than equal to Operator #
a<= b
# Equal to Operator #
a==b
# Not equal to Operator #
a!=b
# Logical Operations using vector #
a <- c(-1.5,3.8,6.7, TRUE)
b <- c(2.1,8.9,-4.1, FALSE)
# AND Operator #
a&b
# OR operator #
a|b
# NOT operator #
!a
# Logical AND Operator #
a&&b
# Logical OR Operator #
a||b

#Matrix#
mymatrix <- matrix(c(1,1,5,1,2,1,4,1,2,2,4,3,3,NA,3,4), nrow =4, ncol = 4, byrow = TRUE)
mymatrix
# Element of 4th row and 2nd column is accessed#
mymatrix[4,2]
# Element of 1st and 3rd row and all columns are accessed #
mymatrix[c(1,3),]
# Element of 4th row and all columns are accessed#
mymatrix[4,]
# Elements of all rows and 3rd column is accessed#
mymatrix[,3]
is.matrix(mymatrix)
# Element of 3rd row and 2nd column is deleted#
#mymatrix[-3,-2]
# Dimensions of matrix #
dim(mymatrix)
# Adding columns in matrix #
mymatrix1<- cbind(mymatrix, c(1:4))
mymatrix1
# Adding rows in matrix #
mymatrix2<- rbind(mymatrix1, c(1:5))
mymatrix2
# Give names to the matrix #
dimnames(mymatrix) <- list(c("row1", "row2", "row3","row4"), c("col1","col2","col3","col4"))
mymatrix
# Access element of rows using row and column names of matrix #
mymatrix["row2","col4"]
# Transpose of matrix #
t(mymatrix)
#dataframe#
#Create a vectors of all types #
n=c(2,3,5)
s=c("aa","bb","cc")
b=c(TRUE,FALSE,TRUE)
#create a dataframe usig vectors #
df=data.frame(n,s,b)
df

#List#
# Create a list of numeric types #
my_list <- list(1:4,8,9)
my_list
# create a list with different data types #
x = list(1, "a", TRUE, c(1:8))
x
# Create a list on iris data #
list(iris[1:5,1:2],iris[11:17,3:4],iris[30:36,1:4])
#getwd Setwd#
# Used to get a current working directory #
getwd()
# Used to set a working directory #
setwd("C:/Users/User02/Google Drive/Business Analytics/Business Analytics Video/Moodle Upload/4. Introduction to R/Class Room PPT/")
# Used to read a .csv file #
urban_pop <- read.csv("urbanpop.csv")
# Shows first 5 observations of each column #
head(urban_pop)
# Shows last 5 observations of each column #
tail(urban_pop)
# Shows 5 point summary of data #
summary(urban_pop)
View(urban_pop)
# Shows the structure of the data #
str(urban_pop)
# Main functions #
#length#
# Gives the length of the vector #
y=c("aa","bb","cc","dd","ee")
length(y)
#Paste #
# used to concatenate vectors after converting to character#
fname="Joe"
lname="Smith"
paste(fname, lname)
#Mode#
#Get or set the type or storage mode of an object#
x <- c(1,5,4,7,2,1,5,3,1)
y <- mode(x)
y
#WHICH#
#Returns the position of the element #
letters
which(letters=="s")
z <- c(6,5,-3,7)
which(z*z > 9)

# Order #
x1 <- c(1,5,4,7,2,1,5,3,1)
# This willgive the position of the number #
order(x1, decreasing = FALSE)
# This will give the actual number from the vector #
x1[order(x1, decreasing = FALSE)]

# merge #
# Make a data frame mapping story numbers to titles
story <- read.table(header=TRUE, text='
                    storyid  title
                    1       lions
                    2      tigers
                    3       bears
                    ')

# Make another data frame with the data and story numbers (no titles)
data <- read.table(header=TRUE, text='
                   subject storyid rating
                   4       1    6.7
                   4       2    4.5
                   4       1    3.7
                   3       2    3.3
                   1       2    4.1
                   2       1    5.2
                   ')

# Merge the two data frames
merge(story, data, "storyid")

#### Loops ####
#If loop #
# Assign 17 to num_views #
num_views <- 17
# Apply if loop to check the number of views greater than 15 #
if(num_views > 15) {
  print("This show is popular!")
}
# if else loop #
# Control structure for num_views
# Assign 14 to num_views #
num_views <- 14
# Apply ifelse loop to check the number of views greater than 15 #
# if the condition is TRUE if loop is executed otherwise else loop will be executed #
if (num_views > 15) {
  print("This show is popular!")
}else{
  print("This show is not popular!")
}
# if else if #
# Assign 13 to num_views #
num_views = 13
if (num_views > 15) {
  print("This show is popular!")
} else if (num_views <= 15 & num_views > 10) {
    print("This show is average!")
} else {
  print("This show is not popular!")
}
# for loop#
# Create a vector #
x <- c(2,5,3,9,8,11,6, 4,8,9,1,3,4,6,7,5,21,12,13,14,10)
# initiate count with 0 #
count <- 0
for (i in x)
{
  if(i %% 2 == 0)  
    count = count+1
}
print(count)

#While loop#
# Assign the cut off speed to speed variable #
speed <- 84
# apply while loop to check the condition #
while (speed > 30 ) {
  
  print("Slow down!")
  speed = speed-5
}
print(speed)

#Apply functions #
# Take a matrix discussed in previous topic #
mymatrix
# Use apply function to take sum of column #
colSum <- apply(mymatrix,2,sum)
colSum
# lapply function #
# create a list with different data types #
mylist = list(x = 1:15, y = c(TRUE,FALSE,TRUE,TRUE,FALSE))
# lapply functions to take mean #
lapply(mylist, mean)
# sapply function to take mean #
sapply(mylist, mean)
#Dplyr package#
#install dplyr package #
#install.packages("dplyr")
#load dplyr and datasets package #
library(dplyr)
library(datasets)
# load inbuild dataset mtcars using data() function #
data(mtcars)
# View loaded dataset using View() function #
View(mtcars)
# Apply select function from dplyr package #
select_mtcars <- select(mtcars, cyl, drat)
select_mtcars
# Apply filter function from dplyr package #
filter(mtcars, mpg > 20)
# Apply arrange function from dplyr package #
arrange(mtcars, mpg,wt)
# ggplot2 #
library(ggplot2)
library(gridExtra)
# load a inbuilt dataset #
df <- ToothGrowth
# convert variable to factor #
df$dose <- as.factor(df$dose)
# Show the first five observations of the data #
head(df)
# plot a boxplot using ggplot function #
model<- ggplot(df, aes(x = dose, y = len, color = dose)) + geom_boxplot()
model

#Plot a barplot using ggplot function #
bp <- ggplot(diamonds, aes(clarity, fill = cut)) + geom_bar() +theme(axis.text.x = element_text(angle = 70, vjust = 0.5))
bp
# Plot a histogram using ggplot function #
ggplot(diamonds, aes(x = carat)) + geom_histogram(binwidth = 0.25, fill = 'steelblue')+scale_x_continuous(breaks=seq(0,3, by=0.5))
# readr package #
# install readr package #
#install.packages("readr")
# load readr package #
library(readr)
# load urbanpop dataset using read_csv #
read_csv("urbanpop.csv")
