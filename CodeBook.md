CodeBook:

This code book lists variables, summaries calculated, along with units, and any other relevant information.

High level steps in analysis:

Script run_analysis.R gets, read and formats data. After that it give some descriptive names to columns and then merges the training and the test sets to create one big data set. Next step is to extract columns containing means & std in features and also subject and activity columns of interest
Script then gives descriptive activity names to name the activities in the data set. In the last step an independent tidy data set with the average of each variable for each activity and each subject. 

All minor steps in the script run_analysis.R are commented.

Columns in tidyData output file:
subject_id represents subject and actvity_name is from activity_labeles. activity_names values are WALKING,  WALKING_UPSTAIRS .  WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING
