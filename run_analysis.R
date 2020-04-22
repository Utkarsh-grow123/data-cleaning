library(data.table)
library(dplyr)
file="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(file,destfile = "/home/sunbeam/data/finalProject.zip")
unzip("/home/sunbeam/data/finalProject.zip")
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")
x=rbind(x_train,x_test)
y=rbind(y_train,y_test)
subject=rbind(subject_train,subject_test)
x
y
subject
merged=cbind(subject,x,y)
head(merged)
tidyData = select(merged,contains("mean"),contains("std"))
select(tidyData,contains("activity")) 
tidyData
names(tidyData)
names(tidyData)[2] = "activity"
names(tidyData)=gsub("Acc","Accleratometer",names(tidyData))
names(tidyData)=gsub("Gyro","Gyrometer",names(tidyData))
names(tidyData)=gsub("Freq","Frequency",names(tidyData))
names(tidyData)=gsub("Mag","Magnitude",names(tidyData))
names(tidyData)=gsub("tBody","TimeBody",names(tidyData))
names(tidyData)=gsub("std","STD",names(tidyData))
names(tidyData)=gsub("angle","Angle",names(tidyData))
names(tidyData)=gsub("grvity","Gravity",names(tidyData))
tidyData
newtidydata=colMeans(tidyData)
newtidydata
write.table(newtidydata, "/home/sunbeam/data/newtidydata.txt", row.name=FALSE)
        