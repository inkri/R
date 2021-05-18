### Final ###
setwd("C:/Users/User02/Google Drive/Business Analytics/Business Analytics Video/Moodle Upload/Explorartory Data Analytics/")
data_file <- read.csv("EDA_data.csv")
View(data_file)
summary(data_file)

boxplot(data_file$Age)
boxplot(data_file$Salary)
hist(data_file$Landacres)
hist(data_file$HouseSizesqrft)
hist(data_file$Salary)
hist(data_file$AppraisedValue)
 
boxplot(data_file$Age)
hist(data_file$Salary)

plot(data_file$Age, data_file$Salary, col = "blue")

#Two-way table
counts = table(data_file$Education,data_file$Gender)
counts

#Stacked column chart
barplot(counts, main = "Data distribution by Education Vs Gender",col = c("blue","red"),legend=rownames(counts), 
        args.legend = list(x = "bottom", bty = "n", inset=c(-0.40, -.40)))


#Imputing with Mean
data_file$Rooms[is.na(data_file$Rooms)] <- mean(data_file$Rooms, na.rm = TRUE)
View(data_file)
summary(data_file)



library(Hmisc)
impute(data_file$Rooms, mean) # replace with mean 
impute(data_file$Rooms, median) #  replace with median 


plot(data_file$AppraisedValue,data_file$Baths)
boxplot(data_file$AppraisedValue)
boxplot(data_file$Baths)

boxplot(data_file$AppraisedValue)
summary(data_file$AppraisedValue)
quantile(data_file$AppraisedValue, .95)

data_file$AppraisedValue = ifelse(data_file$AppraisedValue >= 1000, 850, data_file$AppraisedValue)

boxplot(data_file$AppraisedValue)

summary(data_file$AppraisedValue)
quantile(data_file$AppraisedValue, .95) #95th percentile
quantile(data_file$AppraisedValue, .05) #5th percentile


#Dummy var creation
library(lme4)
new = dummy(data_file$Location)

new_data = cbind(data_file,new)
View(new_data)