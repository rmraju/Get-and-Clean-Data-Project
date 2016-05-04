CodeBook:

This code book lists variables, summaries calculated, along with units, and any other relevant information.

High level steps in analysis:

Script run_analysis.R gets, read and formats data. After that it give some descriptive names to columns and then merges the training and the test sets to create one big data set. Next step is to extract columns containing means & std in features and also subject and activity columns of interest
Script then gives descriptive activity names to name the activities in the data set. In the last step an independent tidy data set with the average of each variable for each activity and each subject. 

All minor steps in the script run_analysis.R are commented.

Columns in tidyData output file:
subject_id represents subject and actvity_name is from activity_labeles. activity_names values are WALKING,  WALKING_UPSTAIRS .  WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING

Here is complete list of variables 
1.   subject_id                          
2.   activity_name                        
3.   tBodyAcc-mean()-X                   
4.   tBodyAcc-mean()-Y                   
5.   tBodyAcc-mean()-Z                 
6.   tBodyAcc-std()-X                    
7.   tBodyAcc-std()-Y                     
8.   tBodyAcc-std()-Z                     
9.   tGravityAcc-mean()-X                
10. tGravityAcc-mean()-Y                
11. tGravityAcc-mean()-Z                 
12. tGravityAcc-std()-X                 
13. tGravityAcc-std()-Y           
14. tGravityAcc-std()-Z             
15. tBodyAccJerk-mean()-X               
16. tBodyAccJerk-mean()-Y          
17. tBodyAccJerk-mean()-Z               
18. tBodyAccJerk-std()-X                
19. tBodyAccJerk-std()-Y             
20. tBodyAccJerk-std()-Z  
21. tBodyGyro-mean()-X                  
22. tBodyGyro-mean()-Y        
23. tBodyGyro-mean()-Z             
24. tBodyGyro-std()-X                   
25. tBodyGyro-std()-Y        
26. tBodyGyro-std()-Z    
27. tBodyGyroJerk-mean()-X              
28. tBodyGyroJerk-mean()-Y     
29. tBodyGyroJerk-mean()-Z   
30. tBodyGyroJerk-std()-X               
31. tBodyGyroJerk-std()-Y
32. tBodyGyroJerk-std()-Z
33. tBodyAccMag-mean()                  
34. tBodyAccMag-std()                
35. tGravityAccMag-mean()             
36. tGravityAccMag-std()                
37. tBodyAccJerkMag-mean()              
38. tBodyAccJerkMag-std()          
39. tBodyGyroMag-mean()                 
40. tBodyGyroMag-std()                  
41. tBodyGyroJerkMag-mean()           
42. tBodyGyroJerkMag-std()              
43. fBodyAcc-mean()-X                  
44. fBodyAcc-mean()-Y                 
45. fBodyAcc-mean()-Z                   
46. fBodyAcc-std()-X      
47. fBodyAcc-std()-Y  
48. fBodyAcc-std()-Z                    
49. fBodyAcc-meanFreq()-X   
50. fBodyAcc-meanFreq()-Y              
51. fBodyAcc-meanFreq()-Z               
52. fBodyAccJerk-mean()-X 
53. fBodyAccJerk-mean()-Y          
54. fBodyAccJerk-mean()-Z               
55. fBodyAccJerk-std()-X              
56. fBodyAccJerk-std()-Y   
57. fBodyAccJerk-std()-Z                
58. fBodyAccJerk-meanFreq()-X   
59. fBodyAccJerk-meanFreq()-Y
60. fBodyAccJerk-meanFreq()-Z           
61. fBodyGyro-mean()-X                 
62. fBodyGyro-mean()-Y  
63. fBodyGyro-mean()-Z                  
64. fBodyGyro-std()-X     
65. fBodyGyro-std()-Y  
66. fBodyGyro-std()-Z                   
67. fBodyGyro-meanFreq()-X      
68. fBodyGyro-meanFreq()-Y   
69. fBodyGyro-meanFreq()-Z              
70. fBodyAccMag-mean()
71. fBodyAccMag-std()     
72. fBodyAccMag-meanFreq()              
73. fBodyBodyAccJerkMag-mean()   
74. fBodyBodyAccJerkMag-std()
75. fBodyBodyAccJerkMag-meanFreq()      
76. fBodyBodyGyroMag-mean()  
77. fBodyBodyGyroMag-std() 
78. fBodyBodyGyroMag-meanFreq()         
79. fBodyBodyGyroJerkMag-mean()      
80. fBodyBodyGyroJerkMag-std() 
81. fBodyBodyGyroJerkMag-meanFreq()     
82. angle(tBodyAccMean,gravity)
83. angle(tBodyAccJerkMean),gravityMean) 
84. angle(tBodyGyroMean,gravityMean)    
85. angle(tBodyGyroJerkMean,gravityMean) 
86. angle(X,gravityMean)
87. angle(Y,gravityMean)                
88. angle(Z,gravityMean)                
