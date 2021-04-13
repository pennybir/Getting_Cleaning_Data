## Getting and cleaning data assignment

library(readr)
library(tidyr)
library(dplyr)
setwd("~/R/Getting_Cleaning_data/UCI HAR Dataset")

## Read all the files into R
## Label the data set with descriptive variable names

features<- read.table("features.txt", header = F)
varnames<- features[,2]

test_subjects<- read.table("test/subject_test.txt", header = F, col.names = "subjects")
test_x<- read.table("test/X_test.txt", header=F, col.names=varnames)
test_y<- read.table("test/y_test.txt", header = F, col.names = "activity")

train_subjects<- read.table("train/subject_train.txt", header = F, col.names = "subjects")
train_x<- read.table("train/X_train.txt", header = F, col.names = varnames)
train_y<- read.table("train/y_train.txt", header = F, col.names = "activity")


## Merge the training and the test sets to create one data set

test<- cbind(test_subjects, test_y, test_x)
train<- cbind(train_subjects, train_y, train_x)
data<- rbind(test, train)
rm(test_subjects, test_x, test_y, test, train, train_subjects, train_x, train_y, varnames)


## Extract only the measurements on the mean and standard deviation for each measurement
data <- data[, grepl("(mean|std|activity|subjects)", names(data))]
data<- data[, !grepl("meanFreq", names(data))]


## Use descriptive activity names to name the activities in the data set
activities<- read.table("activity_labels.txt", header=F)
data<- data%>% arrange(subjects, activity)
data$activity<- factor(data$activity, levels=1:6, labels = c("Walking", "Walking_upstairs", "Walking_downstairs", 
                                                             "Sitting", "Standing", "Laying"))


## Create an independent tidy data set with the average of each variable for each activity and each subject
data2<- data %>% group_by(subjects, activity) %>% summarise(across((1:66), mean), .groups="keep")

## Export the dataset into a text file
write.table(data2,file = "summarydata.txt", row.names = FALSE)
