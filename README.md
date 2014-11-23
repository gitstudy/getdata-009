getdata-009  - Course Project for Getting & Cleaning Data
===========

In this project, the fitness data collected from 30 volunteers for 6 activity types was transformed into a tidy dataset that shows various features measuring only average of 'mean' and 'standard deviation' values obtained per Subject and per activity type. The Subject variable consist of volunteer ID ranging from 1-30, Activity variable consists of 6 activity types namely, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. 

The R script (run_analysis.R) submitted along with this submission, collects the raw data performs the following five steps  to get to the tidy data set described above: 
Step 1. Merges the training and the test sets to create one data set.
Step 5. Extracts only the measurements on the mean and standard deviation for each measurement. 
Step 3. Uses descriptive activity names to name the activities in the data set
Step 4. Appropriately labels the data set with descriptive variable names. 
Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

STEP 1: Merges the training and the test sets to create one data set.
All data set in files X_train.txt, X_test.txt; y_train.txt, y_test.txt; and subject_train.txt, subject_test.txt were combined using the rbind() function. 

STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement.
In this step, first the column labels were from 'features.txt' file were read and the only the features that included 'mean()' and 'std()' in their name were extracted using the function grep(). The R script then generates a data frame 'data' that stores the data values for selected features along with the 'Subject' and 'ActID' labels.

STEP 3: Uses descriptive activity names to name the activities in the data set
In this step, the Activity IDs were replaced with their corresponding avtivity labels (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING) and stored under the column 'Activity' within the data set 'data2'. The dplyr package was also used in this step to make use of 'Select' function

STEP 4. Appropriately labels the data set with descriptive variable names. 
In this step, the feature variables were re-labeled to ensure the meta characters are removed from the label names and also the prefix 't' and 'f' were expanded to 'time' and 'freq'.

STEP 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
In this step, the obesevations for each selected feature variable were averaged over the 'Subject' and 'Activity' variable using the 'melt' and 'dcast' functions. Since these functions use 'reshape2' library package, this package was initially installed to run the operations. The tidy data set is then stored in 'tidy_data' variable. 

write.table(tidy_data, file = "tidy_data.txt", row.name = FALSE)

At the end of the tidy data set, the final data table is transferred to 'tidy_data.txt' using the 'write.table' function. 
The file contains data for following variables: 
Subject
Activity
timeBodyAccMeanX
timeBodyAccMeanY
timeBodyAccMeanZ
timeGravityAccMeanX
timeGravityAccMeanY
timeGravityAccMeanZ
timeBodyAccJerkMeanX
timeBodyAccJerkMeanY
timeBodyAccJerkMeanZ
timeBodyGyroMeanX
timeBodyGyroMeanY
timeBodyGyroMeanZ
timeBodyGyroJerkMeanX
timeBodyGyroJerkMeanY
timeBodyGyroJerkMeanZ
timeBodyAccMagMean
timeGravityAccMagMean
timeBodyAccJerkMagMean
timeBodyGyroMagMean
timeBodyGyroJerkMagMean
freqBodyAccMeanX
freqBodyAccMeanY
freqBodyAccMeanZ
freqBodyAccJerkMeanX
freqBodyAccJerkMeanY
freqBodyAccJerkMeanZ
freqBodyGyroMeanX
freqBodyGyroMeanY
freqBodyGyroMeanZ
freqBodyAccMagMean
freqBodyBodyAccJerkMagMean 
freqBodyBodyGyroMagMean
freqBodyBodyGyroJerkMagMean 
timeBodyAccStdX 
timeBodyAccStdY
timeBodyAccStdZ
timeGravityAccStdX
timeGravityAccStdY
timeGravityAccStdZ
timeBodyAccJerkStdX
timeBodyAccJerkStdY
timeBodyAccJerkStdZ
timeBodyGyroStdX
timeBodyGyroStdY
timeBodyGyroStdZ
timeBodyGyroJerkStdX 
timeBodyGyroJerkStdY
timeBodyGyroJerkStdZ
timeBodyAccMagStd
timeGravityAccMagStd
timeBodyAccJerkMagStd
timeBodyGyroMagStd
timeBodyGyroJerkMagStd
freqBodyAccStdX
freqBodyAccStdY
freqBodyAccStdZ
freqBodyAccJerkStdX
freqBodyAccJerkStdY
freqBodyAccJerkStdZ
freqBodyGyroStdX
freqBodyGyroStdY
freqBodyGyroStdZ
freqBodyAccMagStd
freqBodyBodyAccJerkMagStd
freqBodyBodyGyroMagStd
freqBodyBodyGyroJerkMagStd
