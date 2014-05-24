run_analysis<-function(){
  ## Call all of the data files from the 'train' dataset into a variable name:
  xtrain<-(read.table("UCI HAR Dataset/train/X_train.txt"))
  subtrain<-(read.table("UCI HAR Dataset/train/subject_train.txt"))
  ytrain<-(read.table("UCI HAR Dataset/train/y_train.txt"))
  
  ## Call all of the data files from the 'test' dataset into a variable name: 
  xtest<-(read.table("UCI HAR Dataset/test/X_test.txt"))
  subtest<-(read.table("UCI HAR Dataset/test/subject_test.txt"))
  ytest<-(read.table("UCI HAR Dataset/test/y_test.txt"))
  
  ## Combine the 'train' and 'test' datasets
  df<-rbind(xtrain,xtest)
  sub<-rbind(subtrain,subtest)
  y<-rbind(ytrain,ytest)
  
  ## Set column names of the 'x' dataset
  cols<-read.table("UCI HAR Dataset/features.txt")
  cols<-as.character(cols[,2])
  colnames(df)<-cols
  
  ## Filter by column name to find only "mean" and "std" values of measurements
  ## (meanFreq and Angle() values were removed)
  df<-cbind(df[,grepl("mean",colnames(df))],df[,grepl("std",colnames(df))])
  df<-df[,!grepl("meanFreq",colnames(df))]
  
  ## Capitalize the first letter of mean and std in keeping with tidy column names
  colnames(df)<-gsub("mean", "Mean",colnames(df))
  colnames(df)<-gsub("std","Std",colnames(df))
  
  ## Tidy the column names by removing () and - from the name
  colnames(df)<-gsub("\\(\\)", "", colnames(df))
  colnames(df)<-gsub("-", "", colnames(df))
  
  ## Add two new columns to the data frame with the column names 'subject' and 'activity'
  cols<-c(colnames(df),"subject","activity")
  df<-cbind(df,sub,y)
  colnames(df)<-cols
  
  ## Edit column names where "Body" was repeated twice, as in "BodyBody". 
  ## These values are unique in that they are frequency measurements and can be considered
  ## a misnamed value according to the list in features_info.txt
  ## (fBodyAccJerkMag, fBodyGyroMag, and fBodyGyroJerkMag were previously missing from the dataset)
  colnames(df)<-gsub("BodyBody","Body",colnames(df))
  
  ### Rename other keywords in the variable name: 
  
  ## t = time, f = frequency indicating what property is being measured. 
  ## Only leading letters are considered for the measured property.
  colnames(df)<-gsub("^t","time",colnames(df))
  colnames(df)<-gsub("^f","frequency",colnames(df))
  
  ## Other keywords - Body = Body, Gravity = Gravity, Acc = Accelerometer, Gyro = Gyroscope,
  ## Jerk = Jerk, Mag = Magnitude
  colnames(df)<-gsub("Acc","Accelerometer",colnames(df))
  colnames(df)<-gsub("Gyro","Gyroscope",colnames(df))
  colnames(df)<-gsub("Mag","Magnitude",colnames(df))
  ## Note: X, Y, and Z variables are listed at the end of the column name.
  
  ## Substitute in the activity names for the number placeholder in the Activity column
  df$activity[df$activity == 1] <- "Walking"
  df$activity[df$activity == 2] <- "Walking Upstairs"
  df$activity[df$activity == 3] <- "Walking Downstairs"
  df$activity[df$activity == 4] <- "Sitting"
  df$activity[df$activity == 5] <- "Standing"
  df$activity[df$activity == 6] <- "Laying"
  
  ## Write the current dataset to a .csv file in the working directory for any other further use.
  write.csv(df, file = "MergedData.csv")
  
  ## Melt the dataset to list all combinations of subject and activity and the mean of each other variable
  ## After melting, dcast calculate the mean of each variable for each activity relative to the subject
  dfMelt<-melt(df,id=c("subject","activity"))
  dfCast<-dcast(dfMelt,...~variable,mean)
  
  ## The data frame is saved in the directory as a .csv file for any other further use.
  write.csv(dfCast, file = "TidyDataSubmission.csv")

}