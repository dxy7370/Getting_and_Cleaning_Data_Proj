Getting_and_Cleaning_Data_Proj Codebook
=======================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

subject
  Participant ID (1 to 30)

activity
- 1 WALKING
- 2 WALKING_UPSTAIRS
- 3 WALKING_DOWNSTAIRS
- 4 SITTING
- 5 STANDING
- 6 LAYING

tBodyAcc-mean()-X
- mean for this variable

tBodyAcc-mean()-Y
- mean for this variable

tBodyAcc-mean()-Z
- mean for this variable

tBodyAcc-std()-X
- standard deviation for this variable

tBodyAcc-std()-Y
- standard deviation for this variable

tBodyAcc-std()-Z
- standard deviation for this variable

tGravityAcc-mean()-X
- mean for this variable

tGravityAcc-mean()-Y
- mean for this variable

tGravityAcc-mean()-Z
- mean for this variable

tGravityAcc-std()-X
- standard deviation for this variable

tGravityAcc-std()-Y
- standard deviation for this variable

tGravityAcc-std()-Z
- standard deviation for this variable

tBodyAccJerk-mean()-X
- mean for this variable

tBodyAccJerk-mean()-Y
- mean for this variable

tBodyAccJerk-mean()-Z
- mean for this variable

tBodyAccJerk-std()-X
- standard deviation for this variable

tBodyAccJerk-std()-Y
- standard deviation for this variable

tBodyAccJerk-std()-Z
- standard deviation for this variable

tBodyGyro-mean()-X
- mean for this variable

tBodyGyro-mean()-Y
- mean for this variable

tBodyGyro-mean()-Z
- mean for this variable

tBodyGyro-std()-X
- standard deviation for this variable

tBodyGyro-std()-Y
- standard deviation for this variable

tBodyGyro-std()-Z
- standard deviation for this variable

tBodyGyroJerk-mean()-X
- mean for this variable

tBodyGyroJerk-mean()-Y
- mean for this variable

tBodyGyroJerk-mean()-Z
- mean for this variable

tBodyGyroJerk-std()-X
- standard deviation for this variable

tBodyGyroJerk-std()-Y
- standard deviation for this variable

tBodyGyroJerk-std()-Z
- standard deviation for this variable

tBodyAccMag-mean()
- mean for this variable

tBodyAccMag-std()
- standard deviation for this variable

tGravityAccMag-mean()
- mean for this variable

tGravityAccMag-std()
- standard deviation for this variable

tBodyAccJerkMag-mean()
- mean for this variable

tBodyAccJerkMag-std()
- standard deviation for this variable

tBodyGyroMag-mean()
- mean for this variable

tBodyGyroMag-std()
- standard deviation for this variable

tBodyGyroJerkMag-mean()
- mean for this variable

tBodyGyroJerkMag-std()
- standard deviation for this variable

fBodyAcc-mean()-X
- mean for this variable

fBodyAcc-mean()-Y
- mean for this variable

fBodyAcc-mean()-Z
- mean for this variable

fBodyAcc-std()-X
- standard deviation for this variable

fBodyAcc-std()-Y
- standard deviation for this variable

fBodyAcc-std()-Z
- standard deviation for this variable

fBodyAccJerk-mean()-X
- mean for this variable

fBodyAccJerk-mean()-Y
- mean for this variable

fBodyAccJerk-mean()-Z
- mean for this variable

fBodyAccJerk-std()-X
- standard deviation for this variable

fBodyAccJerk-std()-Y
- standard deviation for this variable

fBodyAccJerk-std()-Z
- standard deviation for this variable

fBodyGyro-mean()-X
- mean for this variable

fBodyGyro-mean()-Y
- mean for this variable

fBodyGyro-mean()-Z
- mean for this variable

fBodyGyro-std()-X
- standard deviation for this variable

fBodyGyro-std()-Y
- standard deviation for this variable

fBodyGyro-std()-Z
- standard deviation for this variable

fBodyAccMag-mean()
- mean for this variable

fBodyAccMag-std()
- standard deviation for this variable

fBodyBodyAccJerkMag-mean()
- mean for this variable

fBodyBodyAccJerkMag-std()
- standard deviation for this variable

fBodyBodyGyroMag-mean()
- mean for this variable

fBodyBodyGyroMag-std()
- standard deviation for this variable

fBodyBodyGyroJerkMag-mean()
- mean for this variable

fBodyBodyGyroJerkMag-std()
- standard deviation for this variable
