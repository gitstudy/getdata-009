#STEP 1: Merges the training and the test sets to create one data set.
      sub_train = read.table("./train/subject_train.txt")
      sub_test = read.table("./test/subject_test.txt")
      xtest = read.table("./test/X_test.txt")
      ytest = read.table("./test/y_test.txt")
      xtrain = read.table("./train/X_train.txt")
      ytrain = read.table("./train/y_train.txt")
      xdata <- rbind(xtrain,xtest)

#STEP 2: Extracts only the measurements on the mean and standard deviation for 
      # each measurement.
      features = read.table("./features.txt")
      colnames(features)[1] = "id"
      colnames(features)[2] = "fname"
      colnames(xdata) <- features[,2]
      
      sub <- rbind(sub_train,sub_test)
      colnames(sub) = "Subject"
      act <- rbind(ytrain,ytest)
      colnames(act) = "ActID"
      meancols <- xdata[,grep("mean()",colnames(xdata))]
      stdcols <- xdata[,grep("std()",colnames(xdata))]
      data <- cbind(sub,act,meancols,stdcols)

#STEP 3: Uses descriptive activity names to name the activities in the data set
      act_label <- read.table("./activity_labels.txt")
      data$Activity[data$ActID == 1] <-  "WALKING" #levels(act_label[2,2])[i]
      data$Activity[data$ActID == 2] <-  "WALKING_UPSTAIRS"
      data$Activity[data$ActID == 3] <-  "WALKING_DOWNSTAIRS"
      data$Activity[data$ActID == 4] <-  "SITTING"
      data$Activity[data$ActID == 5] <-  "STANDING"
      data$Activity[data$ActID == 6] <-  "LAYING"

#STEP 4. Appropriately labels the data set with descriptive variable names. 
      library(dplyr)
      d2 <- select(data, -ActID)
      names(d2) <- gsub("-", "_", names(d2))
      names(d2) <- gsub("()", "", names(d2), fixed = TRUE)

#STEP 5: From the data set in step 4, creates a second, independent tidy data set 
      #with the average of each variable for each activity and each subject.
      library(reshape2)
      molten <- melt(d2, id.vars = c("Subject", "Activity"))
      final <- dcast(molten, Subject + Activity ~variable, fun = mean)
      write.table(final, file = "tidy_data.txt", row.name = FALSE)
      
#======CODE=ENDS=HERE=====================================================
