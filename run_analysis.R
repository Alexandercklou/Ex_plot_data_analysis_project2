#Part1 Download and unzip the files

if (!file.exists("./DataSet.zip")) 
{
  download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="./DataSet.zip", method = "libcurl")
  unzip("./DataSet.zip", overwrite = TRUE, exdir = ".")
}

#Part2 Read the training dataset,testing dataset and combine together

YTestData<- read.table("./UCI HAR Dataset/test/Y_test.txt" ,header = FALSE)
YTrainData<- read.table("./UCI HAR Dataset/train/Y_train.txt",header = FALSE)

XTestData<- read.table("./UCI HAR Dataset/test/X_test.txt" ,header = FALSE)
XTrainData<- read.table("./UCI HAR Dataset/train/X_train.txt",header = FALSE)

SubjectTestData<- read.table("./UCI HAR Dataset/test/Subject_test.txt" ,header = FALSE)
SubjectTrainData<- read.table("./UCI HAR Dataset/train/Subject_train.txt" ,header = FALSE)

XData<-rbind(XTrainData,XTestData)
YData<-rbind(YTrainData,YTestData)
SubjectData<-rbind(SubjectTrainData,SubjectTestData)

#Part3 Read the variable names of the dataset and put it to the dataset 

XDataNames <- read.table("./UCI HAR Dataset/features.txt",head=FALSE)
names(XData)<-XDataNames$V2
names(SubjectData)<-c("Subject")
names(YData)<-c("Activity")

#Part4 Combine X,Y and Subject Dataset togther

Combine1 <- cbind(SubjectData, YData)
DataSet<-cbind(XData,Combine1)

#Part5 Extracts the measurements on the mean and standard deviation from the variables 

subsetNames<-XDataNames$V2[grep("mean\\()|std\\()", XDataNames$V2)]

SubNameList<-c(as.character(subsetNames), "Subject", "Activity" )
DataSet<-subset(DataSet,select=SubNameList)

#Part6 Uses descriptive activity names to name the activities in the data set

LabelActivity <- read.table("./UCI HAR Dataset/activity_labels.txt",header = FALSE)

DataSet$activity <- factor(DataSet$Activity, levels = LabelActivity$V1, labels = LabelActivity$V2)
DataSet$Subject <- as.factor(DataSet$Subject)

#Part7 Appropriately labels the data set with descriptive variable names. 

names(DataSet)<-gsub("^t", "Time", names(DataSet))
names(DataSet)<-gsub("^f", "Frequency", names(DataSet))
names(DataSet)<-gsub("Acc", "Accelerometer", names(DataSet))
names(DataSet)<-gsub("Gyro", "Gyroscope", names(DataSet))
names(DataSet)<-gsub("Mag", "Magnitude", names(DataSet))
names(DataSet)<-gsub("BodyBody", "Body", names(DataSet))

#Part8 Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(plyr)
DataSet2<-aggregate(. ~Subject + Activity, DataSet, mean)
DataSet2<-DataSet2[order(DataSet2$Subject,DataSet2$activity),]
write.table(DataSet2, file = "tidydata.txt",row.name=FALSE)





