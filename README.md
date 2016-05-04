# Get-and-Clean-Data-Project

Getting and Cleaning Data Course Project

Coursera Data Science Project 

Course Project for Getting & Cleaning Data for various activates based on Smartphones Dataset.

This README file lists files included along with relevant details

Data Source URL:

Data for analysis is downloaded from the below URL
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Files Included in Repository:

This repo includes following files - run_analysis.R - CodeBook.md and tidyData.txt

Script details:

This run_analysis.R script creates tidyData.txt after performing analysis on raw data. Final output tidyData.txt contains only features that has mean and std as part of column name.

Main steps in script:

Downloads the dataset from the URL mentioned above and unzips. Creates a "UCI HAR Dataset" folder. Creates data frames for train and test datasets. Later these data frames are merged to create one big data frame that has subject, activity and features data of course from main test and train. A new subset data frame is created that has only features that has either mean or std in the column name numbering to 86. Next step is to make sure that columns names are meaningful. Now columns have "activity_name" and "subject_id". Finally data is reshaped and average of each measurement for each unique combination of activity and subject. Tidy data set contains 180 observations for 88 columns of these 86 are for measurement variables containing mean or std.

How to run the script:

Down load and source from your working director i.e.  source(run_analysis.R)

Information on CodeBook.md:

The file has details/names of variables, data, and any transformations work done to clean data.

Creation of tidy data set:

Ttidy tidyData.txt data file is created after successful completion of running run_analysis.R script on the downloaded data listed in data source URL

Details of tidy data set

180 observations and 88 columns, of these 86 columns have averages for measurement variables that contains mean or std in name and one each for subject_id and actvity_name.
