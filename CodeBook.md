Raw Data Set:

Zipped version of Data Set file will be downloaded from the link below:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

After unzip, the files below are included in unzipped folder with the description

README.txt

features\_info.txt: Shows information about the variables used on the feature vector.

features.txt: List of all features.

activity\_labels.txt: Links the class labels with their activity name.

train/X\_train.txt: Training set

train/y\_train.txt: Training set labels

test/X\_test.txt: Test set.

test/Y\_test.txt: Test set.

test/subject\_train.txt: Test set for subject

Train/subject\_train.txt: Training set for subject

Variables in the Code:

Below are the variables of the code and what contained inside:

| **Variables** | **Description** |
| --- | --- |
| YTestData | Testing data set of Activity |
| YTrainData | Training data set of Activity |
| XTestData | Testing data set of the measurements |
| XTrainData | Training data set of the measurements |
| SubjectTestData | Testing data set of Subject |
| SubjectTrainData | Training data set of Subject |
| XData | Full data set of measurements |
| YData | Full data set of Activity |
| SubjectData | Full data set of Subject |
| XDataNames | List of names of the measurements |
| Combine1 | Combined dataset of Activity and Subject |
| DataSet | Combined dataset of Activity ,Subject and selected measurements |
| subsetNames | List of names on mean and STD of the measurements |
| SubNameList | List of names for the variables of activity,subject and the select measurements |
| LabelActivity | List of label for the Activity |
| DataSet2 | Independent tidy data set with the average of each variable for each activity and each subject. |





Variables in the tidy data set:

Below are the variables of the tidy data set and its meaning:

| **Variables** | **Meaning** |
| --- | --- |
| Subject | ID of the Subject |
| Activity | Level of Activity |
| TimeBodyAccelerometer-mean()-X | Average of Mean Value of Time Body Accelerometer of X |
| TimeBodyAccelerometer-mean()-Y | Average of Mean Value of Time Body Accelerometer of Y |
| TimeBodyAccelerometer-mean()-Z | Average of Mean Value of Time Body Accelerometer of Z |
| TimeBodyAccelerometer-std()-X | Average of Standard deviation Value of Time Body Accelerometer of X |
| TimeBodyAccelerometer-std()-Y | Average of Standard deviation Value of Time Body Accelerometer of Y |
| TimeBodyAccelerometer-std()-Z | Average of Standard deviation Value of Time Body Accelerometer of Z |
| TimeGravityAccelerometer-mean()-X | Average of Mean Value of Time Gravity Accelerometer of X |
| TimeGravityAccelerometer-mean()-Y | Average of Mean Value of Time Gravity Accelerometer of Y |
| TimeGravityAccelerometer-mean()-Z | Average of Mean Value of Time Gravity Accelerometer of Z |
| TimeGravityAccelerometer-std()-X | Average of Standard deviation Value of Time Gravity Accelerometer of X |
| TimeGravityAccelerometer-std()-Y | Average of Standard deviation Value of Time Gravity Accelerometer of Y |
| TimeGravityAccelerometer-std()-Z | Average of Standard deviation Value of Time Gravity Accelerometer of Z |
| TimeBodyAccelerometerJerk-mean()-X | Average of Mean Value of Time Body AccelerometerJerk  of X |
| TimeBodyAccelerometerJerk-mean()-Y | Average of Mean Value of Time Body AccelerometerJerk  of Y |
| TimeBodyAccelerometerJerk-mean()-Z | Average of Mean Value of Time Body AccelerometerJerk  of Z |
| TimeBodyAccelerometerJerk-std()-X | Average of Standard deviation Value of Time Body AccelerometerJerk  of X |
| TimeBodyAccelerometerJerk-std()-Y | Average of Standard deviation Value of Time Body AccelerometerJerk  of Y |
| TimeBodyAccelerometerJerk-std()-Z | Average of Standard deviation Value of Time Body AccelerometerJerk  of Z |
| TimeBodyGyroscope-mean()-X | Average of Mean Value of Time Body Gyroscope of X |
| TimeBodyGyroscope-mean()-Y | Average of Mean Value of Time Body Gyroscope of Y |
| TimeBodyGyroscope-mean()-Z | Average of Mean Value of Time Body Gyroscope of Z |
| TimeBodyGyroscope-std()-X | Average of Standard deviation Value of Time Body Gyroscope of X |
| TimeBodyGyroscope-std()-Y | Average of Standard deviation Value of Time Body Gyroscope of Y |
| TimeBodyGyroscope-std()-Z | Average of Standard deviation Value of Time Body Gyroscope of Z |
| TimeBodyGyroscopeJerk-mean()-X | Average of Mean Value of Time Body GyroscopeJerk  of X |
| TimeBodyGyroscopeJerk-mean()-Y | Average of Mean Value of Time Body GyroscopeJerk  of Y |
| TimeBodyGyroscopeJerk-mean()-Z | Average of Mean Value of Time Body GyroscopeJerk  of Z |
| TimeBodyGyroscopeJerk-std()-X | Average of Standard deviation Value of Time Body GyroscopeJerk  of X |
| TimeBodyGyroscopeJerk-std()-Y | Average of Standard deviation Value of Time Body GyroscopeJerk  of Y |
| TimeBodyGyroscopeJerk-std()-Z | Average of Standard deviation Value of Time Body GyroscopeJerk  of Z |
| TimeBodyAccelerometerMagnitude-mean() | Average of Mean Value of Time Body Accelerometer Magnitude |
| TimeBodyAccelerometerMagnitude-std() | Average of Standard deviation Value of Time Body Accelerometer Magnitude |
| TimeGravityAccelerometerMagnitude-mean() | Average of Mean Value of Time Gravity Accelerometer Magnitude |
| TimeGravityAccelerometerMagnitude-std() | Average of Standard deviation Value of Time Gravity Accelerometer Magnitude |
| TimeBodyAccelerometerJerkMagnitude-mean() | Average of Mean Value of Time Body AccelerometerJerk Magnitude |
| TimeBodyAccelerometerJerkMagnitude-std() | Average of Standard deviation Value of Time Body AccelerometerJerk Magnitude |
| TimeBodyGyroscopeMagnitude-mean() | Average of Mean Value of Time Body GyroscopeMagnitude |
| TimeBodyGyroscopeMagnitude-std() | Average of Standard deviation Value of Time Body GyroscopeMagnitude |
| TimeBodyGyroscopeJerkMagnitude-mean() | Average of Mean Value of Time Body GyroscopeJerk Magnitudee |
| TimeBodyGyroscopeJerkMagnitude-std() | Average of Standard deviation Value of Time Body GyroscopeJerk Magnitude |
| FrequencyBodyAccelerometer-mean()-X | Average of Mean Value of Frequency Body Accelerometer  of X |
| FrequencyBodyAccelerometer-mean()-Y | Average of Mean Value of Frequency Body Accelerometer  of Y |
| FrequencyBodyAccelerometer-mean()-Z | Average of Mean Value of Frequency Body Accelerometer  of Z |
| FrequencyBodyAccelerometer-std()-X | Average of Standard deviation Value of Frequency Body Accelerometer  of X |
| FrequencyBodyAccelerometer-std()-Y | Average of Standard deviation Value of Frequency Body Accelerometer  of Y |
| FrequencyBodyAccelerometer-std()-Z | Average of Standard deviation Value of Frequency Body Accelerometer  of Z |
| FrequencyBodyAccelerometerJerk-mean()-X | Average of Mean Value of Frequency Body Accelerometer Jerk  of X |
| FrequencyBodyAccelerometerJerk-mean()-Y | Average of Mean Value of Frequency Body Accelerometer Jerk  of Y |
| FrequencyBodyAccelerometerJerk-mean()-Z | Average of Mean Value of Frequency Body Accelerometer Jerk  of Z |
| FrequencyBodyAccelerometerJerk-std()-X | Average of Standard deviation Value of Frequency Body Accelerometer Jerk  of X |
| FrequencyBodyAccelerometerJerk-std()-Y | Average of Standard deviation Value of Frequency Body Accelerometer Jerk  of Y |
| FrequencyBodyAccelerometerJerk-std()-Z | Average of Standard deviation Value of Frequency Body Accelerometer Jerk  of Z |
| FrequencyBodyGyroscope-mean()-X | Average of Mean Value of Frequency Body Gyroscope  of X |
| FrequencyBodyGyroscope-mean()-Y | Average of Mean Value of Frequency Body Gyroscope  of Y |
| FrequencyBodyGyroscope-mean()-Z | Average of Mean Value of Frequency Body Gyroscope  of Z |
| FrequencyBodyGyroscope-std()-X | Average of Standard deviation Value of Frequency Body Gyroscope  of X |
| FrequencyBodyGyroscope-std()-Y | Average of Standard deviation Value of Frequency Body Gyroscope  of Y |
| FrequencyBodyGyroscope-std()-Z | Average of Standard deviation Value of Frequency Body Gyroscope  of Z |
| FrequencyBodyAccelerometerMagnitude-mean() | Average of Mean Value of Frequency Body Accelerometer Magnitude |
| FrequencyBodyAccelerometerMagnitude-std() | Average of Standard deviation Value of Frequency Body Accelerometer Magnitude |
| FrequencyBodyAccelerometerJerkMagnitude-mean() | Average of Mean Value of Frequency Body Accelerometer Jerk Magnitude |
| FrequencyBodyAccelerometerJerkMagnitude-std() | Average of Standard deviation Value of Frequency Body Accelerometer Jerk Magnitude |
| FrequencyBodyGyroscopeMagnitude-mean() | Average of Mean Value of Frequency Body Gyroscope Magnitude |
| FrequencyBodyGyroscopeMagnitude-std() | Average of Standard deviation Value of Frequency Body Gyroscope Magnitude |
| FrequencyBodyGyroscopeJerkMagnitude-mean() | Average of Mean Value of Frequency Body Gyroscope Jerk Magnitude |
| FrequencyBodyGyroscopeJerkMagnitude-std() | Average of Standard deviation Value of Frequency Body Gyroscope Jerk Magnitude |
