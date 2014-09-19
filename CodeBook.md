Code book
  This code book describes the variables, the data, and transformations and work performed to clean up the data. 

Data set : The data set produced by "run_analysis.R" is "tidy_data.txt".
The name "tidy_data.txt" was chosen to assist markers to identify the file which corresponds to step 5 of the assignment.

Variables: The file tidy_data.txt has the following columns:
•	"subject": the subject identifier
•	"activity": the activity name (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
•	A column for the measurements on the mean and standard deviation of the underlying data set, containing the mean of the 
measurement for each subject and activity.As the underlying variables have been normalized to the range [_1,1], these averages also fall within this range.

Variables:Variables represent factors of signals in the time and frequency domains (indicated by a prefix of "t" or "f") from the accelerometer and gyroscopic sensors
 of the Samsung Galaxy S. Components of 3_axial signals are separated into "_X", "_Y" and "_Z" variables.
The variables are (with "_X", "_Y" and "_Z" variables summarised as "_XYZ"):
•	tBodyAcc_XYZ
•	tGravityAcc_XYZ
•	tBodyAccJerk_XYZ
•	tBodyGyro_XYZ
•	tBodyGyroJerk_XYZ
•	tBodyAccMag
•	tGravityAccMag
•	tBodyAccJerkMag
•	tBodyGyroMag
•	tBodyGyroJerkMag
•	fBodyAcc_XYZ
•	fBodyAccJerk_XYZ
•	fBodyGyro_XYZ
•	fBodyAccMag
•	fBodyAccJerkMag
•	fBodyGyroMag
•	fBodyGyroJerkMag
The variables captured in the generated data set are:
•	mean: Mean value
•	std: Standard deviation
With 66 variables, plus the identifying columns "Subject" and "Activity", the tidy data has 68 columns. 
For the 6 activities and 30 subjects, there are 180 rows.
The complete set of variables is:
 [1] "tBodyAcc_mean_X"           "tBodyAcc_mean_Y"           "tBodyAcc_mean_Z"           "tBodyAcc_std_X"           
 [5] "tBodyAcc_std_Y"            "tBodyAcc_std_Z"            "tGravityAcc_mean_X"        "tGravityAcc_mean_Y"       
 [9] "tGravityAcc_mean_Z"        "tGravityAcc_std_X"         "tGravityAcc_std_Y"         "tGravityAcc_std_Z"        
[13] "tBodyAccJerk_mean_X"       "tBodyAccJerk_mean_Y"       "tBodyAccJerk_mean_Z"       "tBodyAccJerk_std_X"       
[17] "tBodyAccJerk_std_Y"        "tBodyAccJerk_std_Z"        "tBodyGyro_mean_X"          "tBodyGyro_mean_Y"         
[21] "tBodyGyro_mean_Z"          "tBodyGyro_std_X"           "tBodyGyro_std_Y"           "tBodyGyro_std_Z"          
[25] "tBodyGyroJerk_mean_X"      "tBodyGyroJerk_mean_Y"      "tBodyGyroJerk_mean_Z"      "tBodyGyroJerk_std_X"      
[29] "tBodyGyroJerk_std_Y"       "tBodyGyroJerk_std_Z"       "tBodyAccMag_mean"          "tBodyAccMag_std"          
[33] "tGravityAccMag_mean"       "tGravityAccMag_std"        "tBodyAccJerkMag_mean"      "tBodyAccJerkMag_std"      
[37] "tBodyGyroMag_mean"         "tBodyGyroMag_std"          "tBodyGyroJerkMag_mean"     "tBodyGyroJerkMag_std"     
[41] "fBodyAcc_mean_X"           "fBodyAcc_mean_Y"           "fBodyAcc_mean_Z"           "fBodyAcc_std_X"           
[45] "fBodyAcc_std_Y"            "fBodyAcc_std_Z"            "fBodyAccJerk_mean_X"       "fBodyAccJerk_mean_Y"      
[49] "fBodyAccJerk_mean_Z"       "fBodyAccJerk_std_X"        "fBodyAccJerk_std_Y"        "fBodyAccJerk_std_Z"       
[53] "fBodyGyro_mean_X"          "fBodyGyro_mean_Y"          "fBodyGyro_mean_Z"          "fBodyGyro_std_X"          
[57] "fBodyGyro_std_Y"           "fBodyGyro_std_Z"           "fBodyAccMag_mean"          "fBodyAccMag_std"          
[61] "fBodyBodyAccJerkMag_mean"  "fBodyBodyAccJerkMag_std"   "fBodyBodyGyroMag_mean"     "fBodyBodyGyroMag_std"     
[65] "fBodyBodyGyroJerkMag_mean" "fBodyBodyGyroJerkMag_std"
These variable names come from the underlying dataset, and are explained in detail in the file "features_info.txt" which accompanies that dataset.

Work performed: (for details see the README.md file).


