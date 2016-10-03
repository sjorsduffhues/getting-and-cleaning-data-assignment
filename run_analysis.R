
run_analysis<-function(){
  
  ## set working directory
  setwd("C:/Users/s113087/Desktop/Coursera/UCI HAR Dataset/")
  
  ##load libraries
  library(plyr)
  library(knitr)
  
  ##download and unzip file
  filename<-"gcdata.zip"
  if(!file.exists(filename)){
    url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(url, filename)
  }
  if(!file.exists("UCI HAR Dataset")){
    unzip(filename)
  }
  
  ##read the train and test data from the downloaded files
  subject_train<-read.table("./train/subject_train.txt")
  X_train<-read.table("./train/X_train.txt")
  Y_train<-read.table("./train/Y_train.txt")
  subject_test<-read.table("./test/subject_test.txt")
  X_test<-read.table("./test/X_test.txt")
  Y_test<-read.table("./test/Y_test.txt")
  
  ## read the activity and feature information
  features<-read.table("./features.txt")
  activity_labels<-read.table("./activity_labels.txt")
  
  ## assigning the column names
  colnames(X_train)<-features[,2]
  colnames(X_test)<-features[,2]
  colnames(Y_train)<-"activity"
  colnames(Y_test)<-"activity"
  colnames(subject_train)<-"subject"
  colnames(subject_test)<-"subject"
  colnames(activity_labels)<-c("activity", "activityType")
  
  
  ##1. Merge the training and the test sets to create one data set
  train<-cbind(Y_train, subject_train, X_train)
  test<-cbind(Y_test, subject_test, X_test)
  mergeddata<-rbind(train, test)
  
  
  ##2. Extract only the measurements on the mean and st dev for each measurement
  names<-colnames(mergeddata)
  mean_or_std_vector<-(grepl("subject", names)|grepl("activity",names)|
                         grepl("mean..", names)|grepl("std..", names))
  mean_or_std_data<-mergeddata[,mean_or_std_vector==TRUE]
  
  
  ##3. Use descriptive activity names to name the activities in the data set
  nameddata<-merge(mean_or_std_data, activity_labels, by="activity", all.x=TRUE)
  
  
  ##4.appropriately label the data set with descriptive variable names
  names(nameddata)<-gsub("^t", "Time", names(nameddata))
  names(nameddata)<-gsub("^f", "Frequency", names(nameddata))
  names(nameddata)<-gsub("Acc", "Accelerometer", names(nameddata))
  names(nameddata)<-gsub("Gyro", "Gyroscope", names(nameddata))
  names(nameddata)<-gsub("Mag", "Magnitude", names(nameddata))
  names(nameddata)<-gsub("BodyBody", "Body", names(nameddata))
  
  
  ##5. create a second, independent tidy data set with the average of each variable for each activity and each subject
  tidydata<-aggregate(.~subject + activity, nameddata, mean)
  tidydata<-tidydata[order(tidydata$subject, tidydata$activity),]
  
  write.table(tidydata, file="tidydata.txt", row.name=FALSE)
}
