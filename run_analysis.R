#####################################################################################################
###                                                                                               ###
###   title: "Instruction List for Data Tidying"                                                  ###
###   author: "Keith D. Donldson"                                                                 ###
###   date: "April 26, 2015"                                                                      ###
###   major tables: observations, meanvariables                                                   ###
###   output: tidy_data_set.txt                                                                   ###
###                                                                                               ###
#####################################################################################################
###                                                                                               ###
###   The run_analysis.R script does the following:                                               ###
###   1. Merges the training and the test sets to create one data set.                            ###
###   2. Extracts only the measurements on the mean and standard deviation for each               ### 
###      measurement.                                                                             ###
###   3. Uses descriptive activity names to name the activities in the data set                   ###
###   4. Appropriately labels the data set with descriptive variable names.                       ###
###   5. From the data set in step 4, creates a second, independent tidy data set with the        ###
###      average of each variable for each activity and each subject.                             ###
###                                                                                               ###
#####################################################################################################

library(dplyr)
library(reshape2)

# Read txt files into data tables
activities = read.table("activity_labels.txt")
features = read.table("features.txt")
features$V2 = make.names(features$V2, unique = TRUE)
subjects_test = read.table("subject_test.txt")
activities_test = read.table("y_test.txt")
features_test = read.table("X_test.txt")
subjects_train = read.table("subject_train.txt")
activities_train = read.table("y_train.txt")
features_train = read.table("X_train.txt")

# [TASK 4] Rename subjects vectors
subjects_train = rename(subjects_train, subject=V1)
subjects_test = rename(subjects_test, subject=V1)

# [TASK 4] Rename activity vectors
activities_train = rename(activities_train, activity=V1)
activities_test = rename(activities_test, activity=V1)

# [TASK 4] Rename features columns
colnames(features_train) <- features[,2]
colnames(features_test) <- features[,2]

# [TASK 3] Uses descriptive activity names to name the activities in the data set
# Recode activities based on lookup table
activities$V2 = as.character(activities$V2)   # Convert from chr to factor variables 
for(i in seq_len(nrow(activities))){
  col.to <- activities$V2[i] 
  col.from <- activities$V1[i]
  activities_train$activity <- ifelse(activities_train$activity == col.from, col.to, activities_train$activity)
  activities_test$activity <- ifelse(activities_test$activity == col.from, col.to, activities_test$activity)
}

# Bind data tables to create train and test sets
train = cbind(subjects_train,activities_train, features_train)
test = cbind(subjects_test,activities_test, features_test)

# [TASK 1] Merge the training and the test sets to create one data set.
observations = rbind(train, test)

# [TASK 2] Extract only the measurements on the mean and standard deviation for each measurement.
observations = select(.data = observations, subject, activity, matches("(mean|std)"))

# [TASK 5] Loop over the variables in the observations table
# Using dcast summarize the variable by subject and activity
# Add the variable summarized to the table in the measurement column
# Thereby creating an intermediary long form table of means for each variable
# Row bind the intermediary tables into the meanvariables data table
meanvariables = data.frame()  # Initialize data table
for(varname in names(observations)[3:88]) {
  
  meanvariables = rbind(meanvariables, assign(paste("mean", varname, sep="_"), cbind(dcast(observations, subject ~ activity, value.var = varname, mean), measurement = varname)))
}

# reorder by column name
meanvariables = meanvariables[c("subject", "measurement", "LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS")]

# convert all column names to lowercase for consistency
colnames(meanvariables) <- tolower(colnames(meanvariables))

# Write menavariables data table to tidy_data_set.txt file in the working directory 
write.table(meanvariables, file = "tidy_data_set.txt", row.names=FALSE) 
