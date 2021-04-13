# Getting and cleaning data peer assignment

## Dataset

Dataset used: **Human Recognition Using Smartphones Dataset Version 1.0**
Accessed here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The experiments were carried out with a group of 30 volunteers (19-48 years old). 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain, described in the CodeBook.md file.
 


## Analysis of the data

1. **The working directory was set and necessary packages loaded onto memory**  

```
library(readr)
library(tidyr)
setwd("~/R/Getting_Cleaning_data/UCI HAR Dataset")
```

2. **Files were read into R and labeled with descriptive variable names**  

The obtained dataset was partitioned into two sets, where 70% of the volunteers were in the training dataset and 30% in the test dataset. 
The following files were used:

- 'features.txt': List of all features, which were used as names for the variables
- 'train/X_train.txt': Training set, containing all the measurements
- 'train/y_train.txt': Training labels containing the unique subject identifiers for subjects in the training set
- 'test/X_test.txt': Test set, containing all the measurements
- 'test/y_test.txt': Test labels containing the unique subject identifiers for subjects in the test set  


```
features<- read.table("features.txt", header = F)
varnames<- features[,2]

test_subjects<- read.table("test/subject_test.txt", header = F, col.names = "subjects")
test_x<- read.table("test/X_test.txt", header=F, col.names=varnames)
test_y<- read.table("test/y_test.txt", header = F, col.names = "activity")

train_subjects<- read.table("train/subject_train.txt", header = F, col.names = "subjects")
train_x<- read.table("train/X_train.txt", header = F, col.names = varnames)
train_y<- read.table("train/y_train.txt", header = F, col.names = "activity")
```


3. **The training and the test datasets were merged to create one data set with all study subjects**  

Initially the 3 test datasets were merged by column, and so were the training datasets.  

```
test<- cbind(test_subjects, test_y, test_x)
train<- cbind(train_subjects, train_y, train_x)
```
Then the 2 resulting datasets were merged by row.  

```
data<- rbind(test, train)
```  
The datasets that were no longer necessary were removed from memory  
```
rm(test_subjects, test_x, test_y, test, train, train_subjects, train_x, train_y, varnames)
```  


4. **The columns containing the mean and standard deviation for each measurement were kept and the rest of the measurements were removed from the dataset** 

```
data <- data[, grepl("(mean|std|activity|subjects)", names(data))]
data<- data[, !grepl("meanFreq", names(data))]
```  
  

5. **Descriptive activity names were used to name the activities in the data set**  
  
For this, the 'activity_labels.txt' file was used.
The dataset was sorted by subject and activity.
Then activity was transformed into a factor variable and labeled according to the activity labels.  
  
```
activities<- read.table("activity_labels.txt", header=F)
data<- data%>% arrange(subjects, activity)
data$activity<- factor(data$activity, levels=1:6, labels = c("Walking", "Walking_upstairs",                                    "Walking_downstairs", "Sitting", "Standing", "Laying"))
```

  
6. **A new dataset was created with the average of each variable for each activity and each subject**  

```
data2<- data %>% group_by(subjects, activity) %>% summarise(across((1:66), mean), .groups="keep")
```

  
7. **The new tidy dataset was exported into a text file**  

```
write.table(data2,file = "summarydata.txt", row.names = FALSE)
```


## License:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
