run_analysis
{
  # read the observations for test and training subjects
  x_test<-read.table("X_test.txt")
  x_train<-read.table("X_train.txt")
  
  ######### STEP1 combine the two sets of data to create a new data frame all_rows ##############
  
  all_rows<-rbind(x_train,x_test)
  
  ################ STEP2 & STEP 3 #################################
  # read the feature names into a data frame. Make sure no factors ###
  
  feature_names<-read.table("features.txt",stringsAsFactors=FALSE)
  
  # create a temporay matrix y such that it contains the index of the number of rows of the data frame feature_names
  
  y<-c(1:NROW(feature_names))
  
  # Now replace the headers in the data frame "all_rows" with the feature names using Y as an intermediary
  
  colnames(all_rows)<-sapply(y, function (x) feature_names$V2[x])
  
  # get the mean and std deviation measurement labels only from the data frame feature_names
  mean_index<-grep("mean()", feature_names$V2, fixed=TRUE)
  std_index<-grep("std()", feature_names$V2, fixed=TRUE)
  
  # Lets create an intermediate data frame of  all the standard deviation observations
  std_deviation_data<-all_rows[,c(std_index)]
  
  # Lets create an intermediate data frame of all the mean observations
  mean_data<-all_rows[c(mean_index)]
  
  # lets put both data frames  together
  new_improved_data<-cbind(mean_data,std_deviation_data)
  
  ##### So far I have Completed steps to create a data frame with mean and std deviation observations and labelled them ###
  
  
  ################# Start working towards step 5 #################
  # Lets read y_train and y_test and create a combined data frame 
  # these contain the activities of the subjects i.e. walking, resting etc
  
  y_train<-read.table("y_train.txt")
  y_test<-read.table("y_test.txt")
  
  # merge the two in the right order - just like the x_train and x_test
  y_train_test<-rbind(y_train,y_test)
  
  # Read the subjects info for train and test sets 
  subject_train<-read.table("subject_train.txt")
  subject_test<-read.table("subject_test.txt")
  
  # merge them in the same order as the others
  combined_subjects<-rbind(subject_train,subject_test)
  
  # time to replace the the activities with labels from activity_labels.txt
  
  activity_labels<-read.table("activity_labels.txt", stringsAsFactors=FALSE)
  
  # lets get the activitiy labels for the training and test combined dataframe i.e y_train_test
  
  y<-lapply(y_train_test, function (x) activity_labels$V2[x])
  
  ##################################### Lets now combine the activity, subjects and measurements  #############################
  
  # Lets add the activity labels to the data frame with the observations
  temp_data<-cbind(y,new_improved_data)
  
  
  #label the first column to Activity
  names(temp_data) [1] <-"Activity"
  
  
  # Add subjects to the data frame temp_data to create another temporary data frame temp1_data
  temp1_data<-cbind(combined_subjects,temp_data)
  
  # lets label the column 
  names(temp1_data) [1] <-"Subject"
  
  ########## We are doing step 4 to pretty up the headers, i figured I could do that after I figured out other things ###
  # Lets remove the parentheses in the column headers to make it more presentable
  
  names(temp1_data)<-lapply(colnames(temp1_data), function (x) gsub("\\()", "",x))
  
  # Lets remove the - to _ i.e underscore to name the variables to make it more readable
  names(temp1_data)<-lapply(colnames(temp1_data), function (x) gsub("-", "_",x))
  
  #
  
  # We now have a data frame  with column 1 indicating the Subject, Column 2 indicating Activity and Columns 3 - 68 with measurements with a total 10299 observations
  
  ################ Step 5.  Time to summarize and order the data to get the ultimate tidy data  of 180 observations and 68 columns ##################
  ## First lets create the average of each variable by Activity and Subject ##########
  result<-aggregate(. ~Activity+Subject, temp1_data, mean)
  
  ### Write the tidy data to a file ###################
  write.table(result, file = "tidy_data.txt", row.name=FALSE)
  
  
  ##################Clean up all the temporary stuff to free up memory ######
  rm(x_test, x_train, y_train, y_test, temp1_data, temp_data, all_rows, y, mean_data, std_deviation_data, new_improved_data, result)
  
  
  
}