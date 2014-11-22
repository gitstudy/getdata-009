
The fitness data collected from 30 volunteers for 6 activity types was transformed into a tidy data set with the following variables: 
Subject variable consist of volunteer ID ranging from 1-30, 
Activity IDs were replaced with activity names containing 6 types - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. 

From the list of features (561 total features) obtained from the collected data, the features measuring only 'mean' and 'standard deviation' were selected and an average of each selected variable for each activity and each subject was calculated as part of the tidy data set. 

As a first step, the data tables from training and test sets were merged in one data frame to create one data set that included all 561 variables (features). Next, in order to extract only the measurements on the mean and standard deviation, the data for variables that contained 'mean()' and 'std()' were extracted using using grep function. During this process, 66 features out of the 561 features were extracted and collected in the data frame called 'data' along with 'Subject' and 'ActID' variables. 

Using the extracted data set, the activity IDs were replaced with their corresponding activity names as provided in activity_label data set (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). 

The variables of the treated data set 'data2' were then appropriately labeled to described such as meta-characters were removed from the variable names 't' and 'f' labels were expanded to read 'time' and 'freq' respectively. 
