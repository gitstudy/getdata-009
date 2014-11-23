The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Various set of variables were estimated from these signals such as mean value, standard deviation, median absolute deviation, etc. From the list of features (561 total features) obtained from the collected data, the feature variables measuring only 'mean' and 'standard deviation' were selected. These variables are: 
mean(): Mean value
std(): Standard deviation

The tidy data set contains average of each selected variable (mean value and standard deviations of features only) for each activity and each subject. THe following steps were taken in summarizing the overall data and arriving to the tidy data set. 
As a first step, the data tables from training and test sets were merged in one data frame to create one data set that included all 561 variables (features). Next, in order to extract only the measurements on the mean and standard deviation, the data for variables that contained 'mean()' and 'std()' were extracted using using grep function. During this process, 66 features out of the 561 features were extracted and collected in the data frame called 'data' along with 'Subject' and 'ActID' variables. The 'Subject' variable contained information of 30 volunteers (volunteer ID ranging from 1-30) and 'ActID' contain one of the 6 activity types (Activity IDs 1-6 representing the following activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). 

Using the extracted data set, the activity IDs were replaced with their corresponding activity names as provided in activity_label data set (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). 

The variables of the treated data set 'data2' were then appropriately labeled to described such as meta-characters were removed from the variable names and the prefix 't' and 'f' in variable labels were expanded to read 'time' and 'freq' respectively. 

The complete list of variables of each feature variable is available in 'readme.md'
