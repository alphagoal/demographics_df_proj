

?read.csv()

rm(list = ls()) #clear the environment
#Method 1:Select the file manually

stats <- read.csv(file.choose())

stats

#Method 2: Set WD and Read Data there

getwd()
#Windows
setwd("D:\\User\\Desktop\\Program\\R\\dataset\\section 5")
#need double \\
getwd()


rm(stats) #remove item in environment

stats<-read.csv("Demographic-Data.csv")
stats
nrow(stats) #always check the number of rows
ncol(stats)
head(stats, n=10) #first 5 rows unless specified , get the feels
tail(stats, n=8)
str(stats)  #in other languages, stand for string, in R stand for structure; be careful runif() r uniformly vs run if

summary(stats)

#--------------------------------- Using the $ sign

stats
head(stats)
stats[3,3]
stats[3,"Birth.rate"]
#dollar sign is another way to access data in data frame
stats$Internet.users
stats$Internet.users[2]
stats[,"Internet.users"]
str(stats)
stats$Income.Group

stats
levels(stats$Income.Group)

stats$Income.Group<-as.factor(stats$Income.Group)
levels(stats$Income.Group)




z <- gl(3, 2, 12, labels = c("apple", "salad", "orange"))
z
levels(z) <- c("fruit", "veg", "fruit")
z
