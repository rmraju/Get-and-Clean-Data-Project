################################################################################
# Script Name : run_analysis.R
# Author : Coursera student of Data Science class, John Hopkins University
# Date Created: May 3, 2016

# Script Description: 
# This script creates tidy data set that has columns containing means and std values
# for subject & activity. Basic visual verification of steps is part of the script

# Script details:
# This scripts compereies of following 5 steps
# Initial Step: Loading libraries
# Step 1: Get, Read and Format Data 
# Step 2: Merge Data 
# step 3: Give descriptive names to columns
# step 4: Extract columns containing means & std 
#         and also subject and activity columns of interest
# step 5: Create tidyData
################################################################################

#########################################
# Initial Step: Loading libraries
########################################

# load libraries

library(plyr); library(dplyr)
#library(tidyr)
library(downloader)
library(reshape2)

#removes all objects except for functions:
rm(list = setdiff(ls(), lsf.str()))

#########################################
# Step 1: Get, Read and Format Data 
#########################################

# download and unzip file

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, dest="activityDataset.zip", mode="wb")
unzip("activityDataset.zip")

# creat working directory names

# this creates "UCI HAR Dataset" directory  
mainDir <- paste( getwd(), "/", "UCI HAR Dataset", sep = "")

# following directory will have activity, subject and features data
testDir  <- paste( mainDir, "/", "test", sep = "")
trainDir <- paste( mainDir, "/", "train", sep = "")


## read data dictionary info 
featureNames  <- read.table(paste( mainDir, "/",  "features.txt", sep = ""), header = FALSE)
activityNames <- read.table(paste( mainDir, "/", "activity_labels.txt", sep = ""), header = FALSE)

# read activity data
testActivityData   <- read.table(paste( testDir,  "/", "y_test.txt"  , sep = ""), header = FALSE)
trainActivityData  <- read.table(paste( trainDir, "/", "y_train.txt" , sep = ""), header = FALSE)

# read features data
testFeaturesData   <- read.table(paste( testDir,  "/", "X_test.txt"  , sep = ""), header = FALSE)
trainFeaturesData  <- read.table(paste( trainDir, "/", "X_train.txt" , sep = ""), header = FALSE)

#read subject  data
testSubjectData   <- read.table(paste( testDir,  "/", "subject_test.txt"  , sep = ""), header = FALSE)
trainSubjectData  <- read.table(paste( trainDir, "/", "subject_train.txt" , sep = ""), header = FALSE)


#########################################
# Step 2: Merge Data 
#########################################

activityData <- rbind( trainActivityData, testActivityData )
featuresData <- rbind( trainFeaturesData, testFeaturesData )
subjectData  <- rbind( trainSubjectData,  testSubjectData  )

# check/explore/verify data looks ok and also verify that number of columns 
# and rows in above 3 merged data are fine 

# actvity data
dim(activityData)
dim(trainActivityData)
dim(testActivityData)

# feature data
dim(featuresData)
dim(trainFeaturesData)
dim(testFeaturesData)


#subject data
dim(subjectData)
dim(trainSubjectData)
dim(testSubjectData)


###########################################
# step 3: Give descriptive names to columns
###########################################


# give appropriate column names tp subject and activity data s
colnames(subjectData)  <- "subject_id"
colnames(activityData) <- "activity_id"

#assign fatures names to features data column names
features <- featureNames[,2]
colnames(featuresData) <- features

#merge feature, subject & actvity data and creats all data for later use
allData <- cbind(featuresData, activityData, subjectData)

dim(allData)

####################################################
# Step 4: Extract columns containing means & std 
# and also subject and actvity columns of interest
####################################################

#pick only required means & std columns from featuredData
columnNumerFormeanNstd <- grep(".*Mean.*|.*Std.*", names(allData), ignore.case=TRUE)

#
dim(featuresData) # give 561
dim(allData) # give 563 

# mean and std data for subject and acitvity 
meansNstdData  <- allData[, c( columnNumerFormeanNstd, 562,563)]

# take a look at number of rows and columns
dim(meansNstdData)

#step 4 Giving Descriptive Names

colnames(activityNames) <- c("activity_id", "activity_name")

# update values with correct activity names 

#column #87 corresponds to actvity
colnames(meansNstdData)[87]

#update data
meansNstdData[, 87] <- activityNames[meansNstdData[, 87], 2]

#rename column from acivity_id to activity_name
colnames(meansNstdData)[87] <- "activity_name"

#check every thing looks ok
str(meansNstdData)

#########################################
# Step 5: Create and Verify tidyData
#########################################

meltedData  <- melt(meansNstdData, id=c("subject_id","activity_name"))
tidyData    <- dcast(meltedData, subject_id+activity_name ~ variable, mean)
dim(tidyData)
# write the tidy data set to a file
write.table(tidyData, "tidyData.txt", row.names=FALSE)


#########################################
