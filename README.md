# Getting and cleaning data peer graded assignment

This project for the Getting and Cleaning data course of Coursera uses the data downloaded from the link below.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The run_analysis.R script does the following things:

1. Download and unzip the data if necessary
2. Read the train and test data from the downloaded files
3. Read the activity and feature information
4. Merges the training and the test sets to create one data set.
5. Extracts only the measurements on the mean and standard deviation for each measurement.
6. Uses descriptive activity names to name the activities in the data set
7. Appropriately labels the data set with descriptive variable names.
8. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. This tidy dataset will be saved in tidydata.txt
