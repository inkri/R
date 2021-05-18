#Data Manipulation

#https://www.analyticsvidhya.com/blog/2015/12/faster-data-manipulation-7-packages/

#dplyr
#data.table
#ggplot2
#reshape2
#readr
#tidyr
#lubridate




#dplyr Package
library(dplyr)
data("mtcars")
data('iris')

mydata <- mtcars
head(mydata)

#creating a local dataframe. Local data frame are easier to read
mynewdata <- tbl_df(mydata)
myirisdata <- tbl_df(iris)

class(myirisdata)

#now data will be in tabular structure
mynewdata
myirisdata


#use filter to filter data with required condition
filter(mynewdata, cyl > 4 & gear > 4 )
filter(mynewdata, cyl > 4)
filter(myirisdata, Species %in% c('setosa', 'virginica'))


#use select to pick columns by name
select(mynewdata, cyl,mpg,hp)

#here you can use (-) to hide columns
select(mynewdata, -cyl, -mpg )

#hide a range of columns
select(mynewdata, -c(cyl,mpg))

#select series of columns
select(mynewdata, cyl:gear)

#chaining or pipelining - a way to perform multiple operations in one line
mynewdata %>%
  select(cyl, wt, gear)%>%
  filter(wt > 2)

#arrange can be used to reorder rows
mynewdata%>%
  select(cyl, wt, gear)%>%
  arrange(wt)

mynewdata%>%
  select(cyl, wt, gear)%>%
  arrange(desc(wt))


#mutate - create new variables
mynewdata %>%
  select(mpg, cyl)%>%
  mutate(newvariable = mpg*cyl)

newvariable <- mynewdata %>% mutate(newvariable = mpg*cyl)


#summarise - this is used to find insights from data
myirisdata%>%
  group_by(Species)%>%
  summarise(Average = mean(Sepal.Length, na.rm = TRUE))


myirisdata%>%
  group_by(Species)%>%
  summarise_each(funs(mean, n()), Sepal.Length, Sepal.Width)


#you can rename the variables using rename command
mynewdata %>% rename(miles = mpg)



#data.table Package
library(data.table)
#load data
data("airquality")
mydata <- airquality
head(airquality,6)

data(iris)
myiris <- iris

mydata <- data.table(mydata)
mydata
myiris <- data.table(myiris)
myiris

#subset rows - select 2nd to 4th row
mydata[2:4,]

#select columns with particular values
myiris[Species == 'setosa']


#select columns with multiple values. This will give you columns with Setosa
#and virginica species
myiris[Species %in% c('setosa', 'virginica')]

#select columns. Returns a vector
mydata[,Temp]

mydata[,.(Temp,Month)]

#returns sum of selected column
mydata[,sum(Ozone, na.rm = TRUE)]

#returns sum and standard deviation
mydata[,.(sum(Ozone, na.rm = TRUE), sd(Ozone, na.rm = TRUE))]

#print and plot
myiris[,{print(Sepal.Length)}]
plot(Sepal.Width)


#grouping by a variable
myiris[,.(sepalsum = sum(Sepal.Length)), by=Species]

#select a column for computation, hence need to set the key on column
setkey(myiris, Species)

#selects all the rows associated with this data point
myiris['setosa']
myiris[c('setosa', 'virginica')]


#reshape2 Package
library(reshape2)
#create a data
ID <- c(1,2,3,4,5)
Names <- c('Joseph','Matrin','Joseph','James','Matrin')
DateofBirth <- c(1993,1992,1993,1994,1992)
Subject<- c('Maths','Biology','Science','Psycology','Physics')
thisdata <- data.frame(ID, Names, DateofBirth, Subject)
data.table(thisdata)

#melt 
mt <- melt(thisdata, id=(c('ID','Names')))
mt

#cast
mcast <- dcast(mt, DateofBirth + Subject ~ variable)
mcast


#readr Package
library(readr)
read_csv('test.csv',col_names = TRUE)

read_csv("iris.csv", col_types = list(
  Sepal.Length = col_double(),
  Sepal.Width = col_double(),
  Petal.Length = col_double(),
  Petal.Width = col_double(),
  Species = col_factor(c("setosa", "versicolor", "virginica"))
))


#read_csv("iris.csv", col_types = list(Species = col_factor(c("setosa", "versicolor", "virginica")))
         
         


#tidyr Package
library(tidyr)

#create a dummy data set
names <- c('A','B','C','D','E','A','B')
weight <- c(55,49,76,71,65,44,34)
age <- c(21,20,25,29,33,32,38)
Class <- c('Maths','Science','Social','Physics','Biology','Economics','Accounts')

#create data frame
tdata <- data.frame(names, age, weight, Class)
tdata

#using gather function
long_t <- tdata %>% gather(Key, Value, weight:Class)
long_t


#create a data set
Humidity <- c(37.79, 42.34, 52.16, 44.57, 43.83, 44.59)
Rain <- c(0.971360441, 1.10969716, 1.064475853, 0.953183435, 0.98878849, 0.939676146)
Time <- c("27/01/2015 15:44","23/02/2015 23:24", "31/03/2015 19:15", "20/01/2015 20:52", "23/02/2015 07:46", "31/01/2015 01:55")
#build a data frame
d_set <- data.frame(Humidity, Rain, Time)
d_set

#using separate function we can separate date, month, year
separate_d <- d_set %>% separate(Time, c('Date', 'Month','Year'))
separate_d

#using unite function - reverse of separate
unite_d <- separate_d%>% unite(Time, c(Date, Month, Year), sep = "/")
unite_d


#using spread function - reverse of gather
wide_t <- long_t %>% spread(Key, Value)
wide_t


#Lubridate Package
library(lubridate)

#current date and time
now()

#assigning current date and time to variable n_time
n_time <- now()

#using update function
n_update <- update(n_time, year = 2013, month = 10)
n_update

#add days, months, year, seconds
d_time <- now()
d_time + ddays(1)
d_time + dweeks(2)
d_time + dyears(3)
d_time + dhours(2)
d_time + dminutes(50)
d_time + dseconds(60)


#extract date,time
n_time$hour <- hour(now())
n_time$minute <- minute(now())
n_time$second <- second(now())
n_time$month <- month(now())
n_time$year <- year(now())

#check the extracted dates in separate columns
new_data <- data.frame(n_time$hour, n_time$minute, n_time$second, n_time$month, n_time$year)
new_data
