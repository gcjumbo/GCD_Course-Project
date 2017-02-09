# GCD_Course-Project
## by Jarren Santos

Required course project for the Getting and Cleaning Data course offered by JHU via Coursera

### run_analysis.R

The `run_analysis.R` file cleans and tidies up the data collected from accelerometers.  This was sourced from the UCI Machine Learning Repository, which you can find here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones .

### movement_averages.csv

The `movement_averages.csv` file is a tidied dataset that was created by the `run_analysis.R` file.  It lists the averages of a series of variables by the subject ID and the type of activity.  For more detail, see the description provided by the study:


"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

If there are any questions about how the dataset was processed, please refer to the `run_analysis.R` file or contact me via one of my forms of contact.
