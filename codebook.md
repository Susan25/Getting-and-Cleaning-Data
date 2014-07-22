##Getting and Cleaning Data: Code Book

Below are the cleaned data set variables, included data types, units, and other realted attributes.  The process for arriving at the below results can be further review in the readme.md and the R script itself.

###[1] Variable Name Coding:
- `-x` X Axis
- `-y` Y Axis
- `-z` Z Axis
- `Acc` acceleration
- `Gyro` gyroscope
- `Mag` magnitude
- `mean()` average
- `std()` standard deviation
- `t` time prefix
- `f` frequency prefix

###[2] Cleaned Result Set

File Location: [https://github.com/mjfii/Getting-and-Cleaning-Data/blob/master/result sets/tidy_data_set.txt](https://github.com/mjfii/Getting-and-Cleaning-Data/blob/master/result sets/tidy_data_set.txt)

Variable Name | Variable Type | Units
--- | --- | ---
ActivityName | Reference | n/a
SubjectNumber | Reference | n/a
tBodyAcc-mean()-X | Measurement | standard gravity units
tBodyAcc-mean()-Y | Measurement | standard gravity units
tBodyAcc-mean()-Z | Measurement | standard gravity units
tBodyAcc-std()-X | Measurement | standard gravity units
tBodyAcc-std()-Y | Measurement | standard gravity units
tBodyAcc-std()-Z | Measurement | standard gravity units
tGravityAcc-mean()-X | Measurement | standard gravity units
tGravityAcc-mean()-Y | Measurement | standard gravity units
tGravityAcc-mean()-Z | Measurement | standard gravity units
tGravityAcc-std()-X | Measurement | standard gravity units
tGravityAcc-std()-Y | Measurement | standard gravity units
tGravityAcc-std()-Z | Measurement | standard gravity units
tBodyAccJerk-mean()-X | Measurement | standard gravity units
tBodyAccJerk-mean()-Y | Measurement | standard gravity units
tBodyAccJerk-mean()-Z | Measurement | standard gravity units
tBodyAccJerk-std()-X | Measurement | standard gravity units
tBodyAccJerk-std()-Y | Measurement | standard gravity units
tBodyAccJerk-std()-Z | Measurement | standard gravity units
tBodyGyro-mean()-X | Measurement | radians per second
tBodyGyro-mean()-Y | Measurement | radians per second
tBodyGyro-mean()-Z | Measurement | radians per second
tBodyGyro-std()-X | Measurement | radians per second
tBodyGyro-std()-Y | Measurement | radians per second
tBodyGyro-std()-Z | Measurement | radians per second
tBodyGyroJerk-mean()-X | Measurement | radians per second
tBodyGyroJerk-mean()-Y | Measurement | radians per second
tBodyGyroJerk-mean()-Z | Measurement | radians per second
tBodyGyroJerk-std()-X | Measurement | radians per second
tBodyGyroJerk-std()-Y | Measurement | radians per second
tBodyGyroJerk-std()-Z | Measurement | radians per second
tBodyAccMag-mean() | Measurement | standard gravity units
tBodyAccMag-std() | Measurement | standard gravity units
tGravityAccMag-mean() | Measurement | standard gravity units
tGravityAccMag-std() | Measurement | standard gravity units
tBodyAccJerkMag-mean() | Measurement | standard gravity units
tBodyAccJerkMag-std() | Measurement | standard gravity units
tBodyGyroMag-mean() | Measurement | radians per second
tBodyGyroMag-std() | Measurement | radians per second
tBodyGyroJerkMag-mean() | Measurement | radians per second
tBodyGyroJerkMag-std() | Measurement | radians per second
fBodyAcc-mean()-X | Measurement | standard gravity units
fBodyAcc-mean()-Y | Measurement | standard gravity units
fBodyAcc-mean()-Z | Measurement | standard gravity units
fBodyAcc-std()-X | Measurement | standard gravity units
fBodyAcc-std()-Y | Measurement | standard gravity units
fBodyAcc-std()-Z | Measurement | standard gravity units
fBodyAccJerk-mean()-X | Measurement | standard gravity units
fBodyAccJerk-mean()-Y | Measurement | standard gravity units
fBodyAccJerk-mean()-Z | Measurement | standard gravity units
fBodyAccJerk-std()-Y | Measurement | standard gravity units
fBodyAccJerk-std()-Z | Measurement | standard gravity units
fBodyGyro-mean()-X | Measurement | radians per second
fBodyGyro-mean()-Y | Measurement | radians per second
fBodyGyro-mean()-Z | Measurement | radians per second
fBodyGyro-std()-X | Measurement | radians per second
fBodyGyro-std()-Y | Measurement | radians per second
fBodyGyro-std()-Z | Measurement | radians per second
fBodyAccMag-mean() | Measurement | standard gravity units
fBodyAccMag-std() | Measurement | standard gravity units
fBodyBodyAccJerkMag-mean() | Measurement | standard gravity units
fBodyBodyAccJerkMag-std() | Measurement | standard gravity units
fBodyBodyGyroMag-mean() | Measurement | radians per second
fBodyBodyGyroMag-std() | Measurement | radians per second
fBodyBodyGyroJerkMag-mean() | Measurement | radians per second
fBodyBodyGyroJerkMag-std() | Measurement | radians per second

###[3] Cleaned and Aggregated Result Set

File Location: File Location: [https://github.com/mjfii/Getting-and-Cleaning-Data/blob/master/result sets/aggregate_data_set.txt](https://github.com/mjfii/Getting-and-Cleaning-Data/blob/master/result sets/aggregate_data_set.txt)

Variable Name | Variable Type | Units | Aggregation
--- | --- | --- | ---
ActivityName | Reference | n/a | group by
SubjectNumber | Reference | n/a | group by
tBodyAcc-mean()-X | Measurement | standard gravity units | average
tBodyAcc-mean()-Y | Measurement | standard gravity units | average
tBodyAcc-mean()-Z | Measurement | standard gravity units | average
tBodyAcc-std()-X | Measurement | standard gravity units | average
tBodyAcc-std()-Y | Measurement | standard gravity units | average
tBodyAcc-std()-Z | Measurement | standard gravity units | average
tGravityAcc-mean()-X | Measurement | standard gravity units | average
tGravityAcc-mean()-Y | Measurement | standard gravity units | average
tGravityAcc-mean()-Z | Measurement | standard gravity units | average
tGravityAcc-std()-X | Measurement | standard gravity units | average
tGravityAcc-std()-Y | Measurement | standard gravity units | average
tGravityAcc-std()-Z | Measurement | standard gravity units | average
tBodyAccJerk-mean()-X | Measurement | standard gravity units | average
tBodyAccJerk-mean()-Y | Measurement | standard gravity units | average
tBodyAccJerk-mean()-Z | Measurement | standard gravity units | average
tBodyAccJerk-std()-X | Measurement | standard gravity units | average
tBodyAccJerk-std()-Y | Measurement | standard gravity units | average
tBodyAccJerk-std()-Z | Measurement | standard gravity units | average
tBodyGyro-mean()-X | Measurement | radians per second | average
tBodyGyro-mean()-Y | Measurement | radians per second | average
tBodyGyro-mean()-Z | Measurement | radians per second | average
tBodyGyro-std()-X | Measurement | radians per second | average
tBodyGyro-std()-Y | Measurement | radians per second | average
tBodyGyro-std()-Z | Measurement | radians per second | average
tBodyGyroJerk-mean()-X | Measurement | radians per second | average
tBodyGyroJerk-mean()-Y | Measurement | radians per second | average
tBodyGyroJerk-mean()-Z | Measurement | radians per second | average
tBodyGyroJerk-std()-X | Measurement | radians per second | average
tBodyGyroJerk-std()-Y | Measurement | radians per second | average
tBodyGyroJerk-std()-Z | Measurement | radians per second | average
tBodyAccMag-mean() | Measurement | standard gravity units | average
tBodyAccMag-std() | Measurement | standard gravity units | average
tGravityAccMag-mean() | Measurement | standard gravity units | average
tGravityAccMag-std() | Measurement | standard gravity units | average
tBodyAccJerkMag-mean() | Measurement | standard gravity units | average
tBodyAccJerkMag-std() | Measurement | standard gravity units | average
tBodyGyroMag-mean() | Measurement | radians per second | average
tBodyGyroMag-std() | Measurement | radians per second | average
tBodyGyroJerkMag-mean() | Measurement | radians per second | average
tBodyGyroJerkMag-std() | Measurement | radians per second | average
fBodyAcc-mean()-X | Measurement | standard gravity units | average
fBodyAcc-mean()-Y | Measurement | standard gravity units | average
fBodyAcc-mean()-Z | Measurement | standard gravity units | average
fBodyAcc-std()-X | Measurement | standard gravity units | average
fBodyAcc-std()-Y | Measurement | standard gravity units | average
fBodyAcc-std()-Z | Measurement | standard gravity units | average
fBodyAccJerk-mean()-X | Measurement | standard gravity units | average
fBodyAccJerk-mean()-Y | Measurement | standard gravity units | average
fBodyAccJerk-mean()-Z | Measurement | standard gravity units | average
fBodyAccJerk-std()-Y | Measurement | standard gravity units | average
fBodyAccJerk-std()-Z | Measurement | standard gravity units | average
fBodyGyro-mean()-X | Measurement | radians per second | average
fBodyGyro-mean()-Y | Measurement | radians per second | average
fBodyGyro-mean()-Z | Measurement | radians per second | average
fBodyGyro-std()-X | Measurement | radians per second | average
fBodyGyro-std()-Y | Measurement | radians per second | average
fBodyGyro-std()-Z | Measurement | radians per second | average
fBodyAccMag-mean() | Measurement | standard gravity units | average
fBodyAccMag-std() | Measurement | standard gravity units | average
fBodyBodyAccJerkMag-mean() | Measurement | standard gravity units | average
fBodyBodyAccJerkMag-std() | Measurement | standard gravity units | average
fBodyBodyGyroMag-mean() | Measurement | radians per second | average
fBodyBodyGyroMag-std() | Measurement | radians per second | average
fBodyBodyGyroJerkMag-mean() | Measurement | radians per second | average
fBodyBodyGyroJerkMag-std() | Measurement | radians per second | average

