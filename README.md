# data-cleaning
A tidy data set as described below
A link to a Github repository with your script for performing the analysis
A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.
Data
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Script functionality
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
CodeBook
The CodeBook for this project can be found here. It explains the transformations performed and the resulting data and variables in detail.

Prerequisite
The UCI HAR Dataset.zip data needs to be unpacked and provided in the folder UCI HAR Dataset. Alternativaly you can just clone this repository where all the data is already provided.

Run this project
Set your working directory in R to where these project files are (or copy to project files to your working directory) using the setwd() function
Run source("run_analysis.R") to executre the analysis
Find a new file called tiny_data.txt in your working directory
Dependencies
R needs to be installed on your environment. There no other dependencies for this project.


