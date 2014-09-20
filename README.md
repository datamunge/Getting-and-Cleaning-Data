=================================================================================================
run_analysis - A R script that takes human activity recognition data observations, activity, 
and the subjects of that activity and neatly organizes it in form that represents tidy data.
The human activity recognition data observations were taken from a Samsung phone.

=================================================================================================
Author: datamunge
=================================================================================================

Assumptions:
1. All files related to the analysis are expected in the same directory or folder where the R script is sourced.
So make sure the following files are in the same directory or folder where the R script is stored:
a) X-test.txt
b) X-train.txt
c) y-test.txt
d) y-train.txt
e) subject_train.txt
f) subject_test.txt
g) features.txt
h) activity_labels.txt

2. None of the source files that contain the observations, activity, subjects data etc are 
touched or altered.

How to run the script:
1. Source the file either with the source command or using the source option in R-studio to source it

Output: Produces the file tidy_data.txt in the same directory as specified in the instructions

=============================================================================================================
The script works as follows:

1 Reads the observations for test and training subjects from their respective files.
2.Combines the two sets of data into a single data frame consisting of the observations
3.Reads the feature names into a data frame.
4.Replaces the column names in the data frame from the measurements file with corresponding feature names
5.Filters out only the mean and standard deviation  measurements to create a smaller data frame.
  The resulting data frame now has mean and std deviation observations with their corresponding labels.
  
6. The activities of the test and training subjects are now combined. These represent the activities 
described in the file activities.labels.txt but in numeric form (1 - 6)
7. The subjects who performed the activities are now combined -i.e. the train and test subjects into one.
  
8. The activities from step 6 now need to have labels such as Walking, Running upstairs etc.
   So, the existing values of 1 -6 are now replaced with appropriate labels.
9. A combined data frame with the observations, subjects and measurements is put together with 
appropriate column names for Activity and Subjects.
10. The observations are now prettied up by removing () and - and replacing - with underscores _ (step 4 of the project)
11. You now have a data frame with Activities that are labelled, Subjects, and measurements - a total 
68 columns and 10299 observations

12. Finally (step 5) the data is summarized (average or mean ) by Activity and Subject to create a tidy data file
that is written to disk as tidy_data.txt The tidy data data is now reduced to 68 columns and 180 observations.
13. All the data frames and variables used in the program are cleaned up