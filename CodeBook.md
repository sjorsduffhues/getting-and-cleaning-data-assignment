# CodeBook

To create the tidydata dataset, the following transformations are made to the data:

1. the correct column names are assigned to the test and train data
2. the testing and training data are merged to one dataset
3. only measurements on the mean and standard deviation are extracted
4. descriptive activity and variable names are added
	a. names starting with a "t" are named "Time"
	b. names starting with an "f" are named "Frequency"
	c. "Acc" is replaced by "Accelerometer"
	d. "Gyro" is replaced by "Gyroscope"
	e. "Mag" is replaced by "Magnitude"
	f. "BodyBody" is replaced by "Body"

## Variables of the tidydata dataset:

### Identifiers:
- "subject" - the ID of the person
- "activity" - activity performed while measurements are taken

### Measurements:
- "TimeBodyAccelerometer-mean()-X" 
- "TimeBodyAccelerometer-mean()-Y" 
- "TimeBodyAccelerometer-mean()-Z" 
- "TimeBodyAccelerometer-std()-X" 
- "TimeBodyAccelerometer-std()-Y" 
- "TimeBodyAccelerometer-std()-Z" 
- "TimeGravityAccelerometer-mean()-X" 
- "TimeGravityAccelerometer-mean()-Y" 
- "TimeGravityAccelerometer-mean()-Z" 
- "TimeGravityAccelerometer-std()-X" 
- "TimeGravityAccelerometer-std()-Y" 
- "TimeGravityAccelerometer-std()-Z" 
- "TimeBodyAccelerometerJerk-mean()-X" 
- "TimeBodyAccelerometerJerk-mean()-Y" 
- "TimeBodyAccelerometerJerk-mean()-Z" 
- "TimeBodyAccelerometerJerk-std()-X" 
- "TimeBodyAccelerometerJerk-std()-Y" 
- "TimeBodyAccelerometerJerk-std()-Z" 
- "TimeBodyGyroscope-mean()-X" 
- "TimeBodyGyroscope-mean()-Y" 
- "TimeBodyGyroscope-mean()-Z" 
- "TimeBodyGyroscope-std()-X" 
- "TimeBodyGyroscope-std()-Y" 
- "TimeBodyGyroscope-std()-Z" 
- "TimeBodyGyroscopeJerk-mean()-X" 
- "TimeBodyGyroscopeJerk-mean()-Y" 
- "TimeBodyGyroscopeJerk-mean()-Z" 
- "TimeBodyGyroscopeJerk-std()-X" 
- "TimeBodyGyroscopeJerk-std()-Y" 
- "TimeBodyGyroscopeJerk-std()-Z" 
- "TimeBodyAccelerometerMagnitude-mean()" 
- "TimeBodyAccelerometerMagnitude-std()"
- "TimeGravityAccelerometerMagnitude-mean()" 
- "TimeGravityAccelerometerMagnitude-std()" 
- "TimeBodyAccelerometerJerkMagnitude-mean()" 
- "TimeBodyAccelerometerJerkMagnitude-std()" 
- "TimeBodyGyroscopeMagnitude-mean()" 
- "TimeBodyGyroscopeMagnitude-std()" 
- "TimeBodyGyroscopeJerkMagnitude-mean()" 
- "TimeBodyGyroscopeJerkMagnitude-std()" 
- "FrequencyBodyAccelerometer-mean()-X" 
- "FrequencyBodyAccelerometer-mean()-Y" 
- "FrequencyBodyAccelerometer-mean()-Z" 
- "FrequencyBodyAccelerometer-std()-X" 
- "FrequencyBodyAccelerometer-std()-Y" 
- "FrequencyBodyAccelerometer-std()-Z" 
- "FrequencyBodyAccelerometer-meanFreq()-X" 
- "FrequencyBodyAccelerometer-meanFreq()-Y" 
- "FrequencyBodyAccelerometer-meanFreq()-Z" 
- "FrequencyBodyAccelerometerJerk-mean()-X" 
- "FrequencyBodyAccelerometerJerk-mean()-Y" 
- "FrequencyBodyAccelerometerJerk-mean()-Z" 
- "FrequencyBodyAccelerometerJerk-std()-X" 
- "FrequencyBodyAccelerometerJerk-std()-Y" 
- "FrequencyBodyAccelerometerJerk-std()-Z" 
- "FrequencyBodyAccelerometerJerk-meanFreq()-X" 
- "FrequencyBodyAccelerometerJerk-meanFreq()-Y" 
- "FrequencyBodyAccelerometerJerk-meanFreq()-Z" 
- "FrequencyBodyGyroscope-mean()-X" 
- "FrequencyBodyGyroscope-mean()-Y" 
- "FrequencyBodyGyroscope-mean()-Z" 
- "FrequencyBodyGyroscope-std()-X" 
- "FrequencyBodyGyroscope-std()-Y" 
- "FrequencyBodyGyroscope-std()-Z" 
- "FrequencyBodyGyroscope-meanFreq()-X" 
- "FrequencyBodyGyroscope-meanFreq()-Y" 
- "FrequencyBodyGyroscope-meanFreq()-Z" 
- "FrequencyBodyAccelerometerMagnitude-mean()" 
- "FrequencyBodyAccelerometerMagnitude-std()" 
- "FrequencyBodyAccelerometerMagnitude-meanFreq()" 
- "FrequencyBodyAccelerometerJerkMagnitude-mean()" 
- "FrequencyBodyAccelerometerJerkMagnitude-std()" 
- "FrequencyBodyAccelerometerJerkMagnitude-meanFreq()" 
- "FrequencyBodyGyroscopeMagnitude-mean()" 
- "FrequencyBodyGyroscopeMagnitude-std()" 
- "FrequencyBodyGyroscopeMagnitude-meanFreq()" 
- "FrequencyBodyGyroscopeJerkMagnitude-mean()" 
- "FrequencyBodyGyroscopeJerkMagnitude-std()" 
- "FrequencyBodyGyroscopeJerkMagnitude-meanFreq()"  

### Activity types:
- 1  WALKING - person was walking during test
- 2 WALKING_UPSTAIRS - person was walking upstairs during test
- 3 WALKING_DOWNSTAIRS - person was walking downstairs during test
- 4 SITTING - person was sitting during test
- 5 STANDING - person was standing during test
- 6 LAYING - person was laying during test
