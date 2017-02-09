### Setup ###

# Download the data from the following URL:
    # https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# Unzip the file and put it into your working directory

setwd("/Users/jarrenLS/Documents/Grinnell College/04_Spring 2017/MAT-397 (Adv Data Sci)/Coursera/03_Getting and Cleaning Data/Week 04")

library(plyr); library(dplyr)


### Part 1 ###

# Merge the training and the test sets to create one data set

# Read in all necessary text files
SubjectsTrain <- scan("UCI HAR Dataset/train/subject_train.txt", what = list(subject = ""))
SubjectsTest <- scan("UCI HAR Dataset/test/subject_test.txt", what = list(subject = ""))
xTrain <- scan("UCI HAR Dataset/train/X_train.txt", what = double())
xTest <- scan("UCI HAR Dataset/test/X_test.txt", what = double())
yActivityTrain <- scan("UCI HAR Dataset/train/y_train.txt", what = list(subject = ""))
yActivityTest <- scan("UCI HAR Dataset/test/y_test.txt", what = list(subject = ""))

features <- scan("UCI HAR Dataset/features.txt", what = list(num = 0, variable = ""))
featuresVariables <- features$variable

# Creating the data frame and merging them to create one dataset
movement <- data.frame(subject = c(SubjectsTrain$subject, SubjectsTest$subject), 
                       activity = c(yActivityTrain$subject, yActivityTest$subject))
movement[, featuresVariables] <- NA
xMatrix <- matrix(data = c(xTrain, xTest), nrow = length(featuresVariables))
xMatrix <- t(xMatrix)
movement[, 3:563] <- xMatrix


### Part 2 ###

# Extracts only the measurements on the mean and standard deviation for each measurement

# Check to see which columns have "mean" or "std" in the variable name
numMeans <- length(grep("mean()", names(movement)))
numStd <- length(grep("std()", names(movement)))
totalCol <- numMeans + numStd + 2   # there are 2 columns for subject and activity

# For whatever reason, any variables with "meanFreq()" are still kept despite not directly matching our
# query.  I've decided that this is okay and will not affect our dataset that much.

# Select the columns of interest
movement <- movement[, grepl("mean()", names(movement)) | grepl("std()", names(movement))]
    # Running this code actually deletes your subject and activity columns, so add these in after
movement$subject <- c(SubjectsTrain$subject, SubjectsTest$subject)
movement$activity <- c(yActivityTrain$subject, yActivityTest$subject)


### Part 3 ###

# Uses descriptive activity names to name the activities in the data set

# Simplpy tidying the dataset a bit
movement$subject <- as.numeric(movement$subject)
movement <- arrange(movement, subject, activity)

# Use the `revalue()` function from the `plyr` package to easily change the factors
movement$activity <- plyr::revalue(factor(movement$activity, as.character(1:6)), 
                                   c("1" = "WALKING", "2" = "WALKING_UPSTAIRS", 
                                     "3" = "WALKING_DOWNSTAIRS", "4" = "SITTING",
                                     "5" = "STANDING", "6" = "LAYING"))


### Part 4 ###

# Because we sourced the variable names directly from the text file, we have descriptive variable names!
# Party hard!


### Part 5 ###

# From the data set in step 4, creates a second, independent tidy data set with the average of each
# variable for each activity and each subject.

movementTidy <- ddply(movement, .(subject, activity), function(x) colMeans(x[, 1:79]))
write.csv(movementTidy, "GCD_Course-Project/movement_averages.csv", row.names = TRUE)

# Load and view the data to see if it is tidy (and ballin')

movementComplete <- read.csv("GCD_Course-Project/movement_averages.csv")
View(movementComplete)
