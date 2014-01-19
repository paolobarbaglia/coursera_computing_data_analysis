#Question 6
sum(is.na(hw1_data[,1]))
#Question 7
mean(hw1_data[,1],,na.rm = TRUE)
#Question 8
airquality<- subset(hw1_data, Ozone > 31 & Temp > 90)
mean(airquality[,2],,na.rm = TRUE)

month<- subset(hw1_data, Month==6)
mean(month[,4],,na.rm = TRUE)

ozonemay<- subset(hw1_data, Month==5)
which.max(ozonemay[,1])