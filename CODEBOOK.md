# Codebook for Getting and Cleaning Data Course Project

## by Jarren Santos

### run_analysis.R

The `run_analysis.R` file cleans and tidies up the data collected from accelerometers.  This was sourced from the UCI Machine Learning Repository, which you can find here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones .

### movement_averages.csv

The `movement_averages.csv` file is a tidied dataset that was created by the `run_analysis.R` file.  It lists the averages of a series of variables by the subject ID and the type of activity.  For more detail, see the description provided by the study:


"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."


The names of each variable can be seen below (this list was obtained using the `as.list(names(movementComplete))` command):

[[1]]
[1] "X"

[[2]]
[1] "subject"

[[3]]
[1] "activity"

[[4]]
[1] "tBodyAcc.mean...X"

[[5]]
[1] "tBodyAcc.mean...Y"

[[6]]
[1] "tBodyAcc.mean...Z"

[[7]]
[1] "tBodyAcc.std...X"

[[8]]
[1] "tBodyAcc.std...Y"

[[9]]
[1] "tBodyAcc.std...Z"

[[10]]
[1] "tGravityAcc.mean...X"

[[11]]
[1] "tGravityAcc.mean...Y"

[[12]]
[1] "tGravityAcc.mean...Z"

[[13]]
[1] "tGravityAcc.std...X"

[[14]]
[1] "tGravityAcc.std...Y"

[[15]]
[1] "tGravityAcc.std...Z"

[[16]]
[1] "tBodyAccJerk.mean...X"

[[17]]
[1] "tBodyAccJerk.mean...Y"

[[18]]
[1] "tBodyAccJerk.mean...Z"

[[19]]
[1] "tBodyAccJerk.std...X"

[[20]]
[1] "tBodyAccJerk.std...Y"

[[21]]
[1] "tBodyAccJerk.std...Z"

[[22]]
[1] "tBodyGyro.mean...X"

[[23]]
[1] "tBodyGyro.mean...Y"

[[24]]
[1] "tBodyGyro.mean...Z"

[[25]]
[1] "tBodyGyro.std...X"

[[26]]
[1] "tBodyGyro.std...Y"

[[27]]
[1] "tBodyGyro.std...Z"

[[28]]
[1] "tBodyGyroJerk.mean...X"

[[29]]
[1] "tBodyGyroJerk.mean...Y"

[[30]]
[1] "tBodyGyroJerk.mean...Z"

[[31]]
[1] "tBodyGyroJerk.std...X"

[[32]]
[1] "tBodyGyroJerk.std...Y"

[[33]]
[1] "tBodyGyroJerk.std...Z"

[[34]]
[1] "tBodyAccMag.mean.."

[[35]]
[1] "tBodyAccMag.std.."

[[36]]
[1] "tGravityAccMag.mean.."

[[37]]
[1] "tGravityAccMag.std.."

[[38]]
[1] "tBodyAccJerkMag.mean.."

[[39]]
[1] "tBodyAccJerkMag.std.."

[[40]]
[1] "tBodyGyroMag.mean.."

[[41]]
[1] "tBodyGyroMag.std.."

[[42]]
[1] "tBodyGyroJerkMag.mean.."

[[43]]
[1] "tBodyGyroJerkMag.std.."

[[44]]
[1] "fBodyAcc.mean...X"

[[45]]
[1] "fBodyAcc.mean...Y"

[[46]]
[1] "fBodyAcc.mean...Z"

[[47]]
[1] "fBodyAcc.std...X"

[[48]]
[1] "fBodyAcc.std...Y"

[[49]]
[1] "fBodyAcc.std...Z"

[[50]]
[1] "fBodyAcc.meanFreq...X"

[[51]]
[1] "fBodyAcc.meanFreq...Y"

[[52]]
[1] "fBodyAcc.meanFreq...Z"

[[53]]
[1] "fBodyAccJerk.mean...X"

[[54]]
[1] "fBodyAccJerk.mean...Y"

[[55]]
[1] "fBodyAccJerk.mean...Z"

[[56]]
[1] "fBodyAccJerk.std...X"

[[57]]
[1] "fBodyAccJerk.std...Y"

[[58]]
[1] "fBodyAccJerk.std...Z"

[[59]]
[1] "fBodyAccJerk.meanFreq...X"

[[60]]
[1] "fBodyAccJerk.meanFreq...Y"

[[61]]
[1] "fBodyAccJerk.meanFreq...Z"

[[62]]
[1] "fBodyGyro.mean...X"

[[63]]
[1] "fBodyGyro.mean...Y"

[[64]]
[1] "fBodyGyro.mean...Z"

[[65]]
[1] "fBodyGyro.std...X"

[[66]]
[1] "fBodyGyro.std...Y"

[[67]]
[1] "fBodyGyro.std...Z"

[[68]]
[1] "fBodyGyro.meanFreq...X"

[[69]]
[1] "fBodyGyro.meanFreq...Y"

[[70]]
[1] "fBodyGyro.meanFreq...Z"

[[71]]
[1] "fBodyAccMag.mean.."

[[72]]
[1] "fBodyAccMag.std.."

[[73]]
[1] "fBodyAccMag.meanFreq.."

[[74]]
[1] "fBodyBodyAccJerkMag.mean.."

[[75]]
[1] "fBodyBodyAccJerkMag.std.."

[[76]]
[1] "fBodyBodyAccJerkMag.meanFreq.."

[[77]]
[1] "fBodyBodyGyroMag.mean.."

[[78]]
[1] "fBodyBodyGyroMag.std.."

[[79]]
[1] "fBodyBodyGyroMag.meanFreq.."

[[80]]
[1] "fBodyBodyGyroJerkMag.mean.."

[[81]]
[1] "fBodyBodyGyroJerkMag.std.."

[[82]]
[1] "fBodyBodyGyroJerkMag.meanFreq.."

If there are any questions about how the dataset was processed, please refer to the `run_analysis.R` file or contact me via one of my forms of contact.