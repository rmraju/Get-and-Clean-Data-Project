CodeBook:

This code book lists variables, summaries calculated, along with units, and any other relevant information.

High level steps in analysis:

Script run_analysis.R gets, read and formats data. After that it give some descriptive names to columns and then merges the training and the test sets to create one big data set. Next step is to extract columns containing means & std in features and also subject and activity columns of interest
Script then gives descriptive activity names to name the activities in the data set. In the last step an independent tidy data set with the average of each variable for each activity and each subject. 

All minor steps in the script run_analysis.R are commented.

Columns in tidyData output file:
subject_id represents subject and actvity_name is from activity_labeles. Values of activity_names are WALKING,  WALKING_UPSTAIRS .  WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING


Here is complete list of 88 variables

•	subject_id

•	activity_name

•	tBodyAcc-mean()-X

•	tBodyAcc-mean()-Y

•	tBodyAcc-mean()-Z

•	tBodyAcc-std()-X

•	tBodyAcc-std()-Y

•	tBodyAcc-std()-Z

•	tGravityAcc-mean()-X

•	tGravityAcc-mean()-Y

•	tGravityAcc-mean()-Z

•	tGravityAcc-std()-X

•	tGravityAcc-std()-Y

•	tGravityAcc-std()-Z

•	tBodyAccJerk-mean()-X

•	tBodyAccJerk-mean()-Y

•	tBodyAccJerk-mean()-Z

•	tBodyAccJerk-std()-X

•	tBodyAccJerk-std()-Y

•	tBodyAccJerk-std()-Z

•	tBodyGyro-mean()-X

•	tBodyGyro-mean()-Y

•	tBodyGyro-mean()-Z

•	tBodyGyro-std()-X

•	tBodyGyro-std()-Y

•	tBodyGyro-std()-Z

•	tBodyGyroJerk-mean()-X

•	tBodyGyroJerk-mean()-Y

•	tBodyGyroJerk-mean()-Z

•	tBodyGyroJerk-std()-X

•	tBodyGyroJerk-std()-Y

•	tBodyGyroJerk-std()-Z 

•	tBodyAccMag-mean()

•	tBodyAccMag-std()

•	tGravityAccMag-mean()

•	tGravityAccMag-std()

•	tBodyAccJerkMag-mean()

•	tBodyAccJerkMag-std()

•	tBodyGyroMag-mean()

•	tBodyGyroMag-std()

•	tBodyGyroJerkMag-mean()

•	tBodyGyroJerkMag-std()

•	fBodyAcc-mean()-X

•	fBodyAcc-mean()-Y

•	fBodyAcc-mean()-Z

•	fBodyAcc-std()-X

•	fBodyAcc-std()-Y

•	fBodyAcc-std()-Z

•	fBodyAcc-meanFreq()-X

•	fBodyAcc-meanFreq()-Y

•	fBodyAcc-meanFreq()-Z

•	fBodyAccJerk-mean()-X 

•	fBodyAccJerk-mean()-Y

•	fBodyAccJerk-mean()-Z

•	fBodyAccJerk-std()-X

•	fBodyAccJerk-std()-Y

•	fBodyAccJerk-std()-Z

•	fBodyAccJerk-meanFreq()-X

•	fBodyAccJerk-meanFreq()-Y 

•	fBodyAccJerk-meanFreq()-Z

•	fBodyGyro-mean()-X

•	fBodyGyro-mean()-Y

•	fBodyGyro-mean()-Z

•	fBodyGyro-std()-X

•	fBodyGyro-std()-Y

•	fBodyGyro-std()-Z

•	fBodyGyro-meanFreq()-X

•	fBodyGyro-meanFreq()-Y

•	fBodyGyro-meanFreq()-Z

•	fBodyAccMag-mean() 

•	fBodyAccMag-std()

•	fBodyAccMag-meanFreq()

•	fBodyBodyAccJerkMag-mean()

•	fBodyBodyAccJerkMag-std() 

•	fBodyBodyAccJerkMag-meanFreq()

•	fBodyBodyGyroMag-mean()

•	fBodyBodyGyroMag-std() 

•	fBodyBodyGyroMag-meanFreq()

•	fBodyBodyGyroJerkMag-mean()

•	fBodyBodyGyroJerkMag-std()

•	fBodyBodyGyroJerkMag-meanFreq()

•	angle(tBodyAccMean,gravity) 

•	angle(tBodyAccJerkMean),gravityMean) 

•	angle(tBodyGyroMean,gravityMean)

•	angle(tBodyGyroJerkMean,gravityMean) 

•	angle(X,gravityMean) 

•	angle(Y,gravityMean)

•	angle(Z,gravityMean)


