**Introduction to the Assignment:**

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.


One of the most exciting areas in all of data science right now is wearable computing - see for example  [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/) [ ](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:


 [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


Here are the data for the project:


 [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

File in this Repo:

run\_analysis.R: The R script for running the analysis

CodeBook.md: the variables name inside the script and the tidy data

tidydata.txt: result of the analysis data

README.MD: Background information of the assignment and the explain how the script works

**The script and explanation:**

Below are the script and how it works:

**Part1:Download and unzip the files**

if (!file.exists("./DataSet.zip"))

{ download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="./DataSet.zip", method = "curl")

  unzip("./DataSet.zip", overwrite = TRUE, exdir = ".")

}

**Part2 Read the training dataset, testing dataset and combine together**

YTestData<- read.table("./UCI HAR Dataset/test/Y\_test.txt" ,header = FALSE)

YTrainData<- read.table("./UCI HAR Dataset/train/Y\_train.txt",header = FALSE)

XTestData<- read.table("./UCI HAR Dataset/test/X\_test.txt" ,header = FALSE)

XTrainData<- read.table("./UCI HAR Dataset/train/X\_train.txt",header = FALSE)

SubjectTestData<- read.table("./UCI HAR Dataset/test/Subject\_test.txt" ,header = FALSE)

SubjectTrainData<- read.table("./UCI HAR Dataset/train/Subject\_train.txt" ,header = FALSE)

XData<-rbind(XTrainData,XTestData)

YData<-rbind(YTrainData,YTestData)

SubjectData<-rbind(SubjectTrainData,SubjectTestData)

**Part3 Read the variable names of the dataset and put it to the dataset**

XDataNames <- read.table("./UCI HAR Dataset/features.txt",head=FALSE)

names(XData)<-XDataNames$V2

names(SubjectData)<-c("Subject")

names(YData)<-c("Activity")

**Part4 Combine X,Y and Subject Dataset together**

Combine1 <- cbind(SubjectData, YData)

DataSet<-cbind(XData,Combine1)

**Part5 Extracts the measurements on the mean and standard deviation from the variables**

subsetNames<-XDataNames$V2[grep("mean\\()|std\\()", XDataNames$V2)]

SubNameList<-c(as.character(subsetNames), "Subject", "Activity" )

DataSet<-subset(DataSet,select=SubNameList)

**Part6 Uses descriptive activity names to name the activities in the data set**

LabelActivity <- read.table("./UCI HAR Dataset/activity\_labels.txt",header = FALSE)

DataSet$activity <- factor(DataSet$Activity, levels = LabelActivity$V1, labels = LabelActivity$V2)

DataSet$Subject <- as.factor(DataSet$Subject)

**Part7 Appropriately labels the data set with descriptive variable names.**

names(DataSet)<-gsub("^t", "Time", names(DataSet))

names(DataSet)<-gsub("^f", "Frequency", names(DataSet))

names(DataSet)<-gsub("Acc", "Accelerometer", names(DataSet))

names(DataSet)<-gsub("Gyro", "Gyroscope", names(DataSet))

names(DataSet)<-gsub("Mag", "Magnitude", names(DataSet))

names(DataSet)<-gsub("BodyBody", "Body", names(DataSet))

**Part8 Creates a second, independent tidy data set with the average of each variable for each activity and each subject.**

library(plyr)

DataSet2<-aggregate(. ~Subject + Activity, DataSet, mean)

DataSet2<-DataSet2[order(DataSet2$Subject,DataSet2$activity),]

write.table(DataSet2, file = "tidydata.txt",row.name=FALSE)