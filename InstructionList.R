#The instruction list
#Ideally a computer script (in R :-), but I suppose Python is ok too...)
#The input for the script is the raw data
#The output is the processed, tidy data
#There are no parameters to the script
#In some cases it will not be possible to script every step. In that case you should provide instructions like:

#Step 1 - take the raw file, run version 3.1.2 of summarize software with parameters a=1, b=2, c=3
#Step 2 - run the software separately for each sample
#Step 3 - take column three of outputfile.out for each sample and that is the corresponding row in the output data set

library(dplyr)
library(reshape2)

#this.dir <- dirname(parent.frame(2)$ofile)
#setwd(this.dir)
this.dir <- "/Users/kdonaldson/Projects/GettingCleaningData/Project/human-activity-recognition"

setwd(paste(this.dir, "/UCI HAR Dataset/", sep = ""))
activities = read.table("activity_labels.txt")
features = read.table("features.txt")
features$V2 = make.names(features$V2, unique = TRUE)

setwd(paste(this.dir, "/UCI HAR Dataset/test/", sep = ""))
subjects_test = read.table("subject_test.txt")
activities_test = read.table("y_test.txt")
features_test = read.table("X_test.txt")

setwd(paste(this.dir, "/UCI HAR Dataset/test/Inertial Signals/", sep = ""))
files = list.files(path = ".", pattern = NULL, all.files = FALSE)
for (file in files ) {
  file_name = strsplit(file, "\\.")[[1]]
  assign(file_name[1], read.table(file))
}


setwd(paste(this.dir, "/UCI HAR Dataset/train/", sep = ""))
subjects_train = read.table("subject_train.txt")
activities_train = read.table("y_train.txt")
features_train = read.table("X_train.txt")

setwd(paste(this.dir, "/UCI HAR Dataset/train/Inertial Signals/", sep = ""))
files = list.files(path = ".", pattern = NULL, all.files = FALSE)
for (file in files ) {
  file_name = strsplit(file, "\\.")[[1]]
  assign(file_name[1], read.table(file))
}

# Cleanup
rm(file)
rm(file_name)
rm(files)

# Rename subjects vectors
subjects_train = rename(subjects_train, subject=V1)
subjects_test = rename(subjects_test, subject=V1)

# Rename activity vectors
activities_train = rename(activities_train, activity=V1)
activities_test = rename(activities_test, activity=V1)

# Rename features columns
colnames(features_train) <- features[,2]
colnames(features_test) <- features[,2]

# Uses descriptive activity names to name the activities in the data set
# Recode activities based on lookup table
activities$V2 = as.character(activities$V2)
for(i in seq_len(nrow(activities))){  #Make replacements
  col.to <- activities$V2[i] 
  col.from <- activities$V1[i]
  activities_train$activity <- ifelse(activities_train$activity == col.from, col.to, activities_train$activity)
  activities_test$activity <- ifelse(activities_test$activity == col.from, col.to, activities_test$activity)
}

train = cbind(subjects_train,activities_train, features_train)
test = cbind(subjects_test,activities_test, features_test)

# Merge the training and the test sets to create one data set.
observations = rbind(train, test)

# Extracts only the measurements on the mean and standard deviation for each measurement.
observations = select(.data = observations, subject, activity, matches("(mean|std)"))

body_acc_x = rbind(body_acc_x_train, body_acc_x_test)
observations_body_acc_x = cbind(observations, body_acc_x, row.names = NULL)
observations_body_acc_x_melt <- melt(observations_body_acc_x, id=1:88)

body_acc_y = rbind(body_acc_y_train, body_acc_y_test)
observations_body_acc_y = cbind(observations, body_acc_y, row.names = NULL)
observations_body_acc_y_melt <- melt(observations_body_acc_y, id=1:88)

body_acc_z = rbind(body_acc_z_train, body_acc_z_test)
observations_body_acc_z = cbind(observations, body_acc_z, row.names = NULL)
observations_body_acc_z_melt <- melt(observations_body_acc_z, id=1:88)

body_gyro_x = rbind(body_gyro_x_train, body_gyro_x_test)
observations_body_gyro_x = cbind(observations, body_gyro_x, row.names = NULL)
observations_body_gyro_x_melt <- melt(observations_body_gyro_x, id=1:88)

body_gyro_y = rbind(body_gyro_y_train, body_gyro_y_test)
observations_body_gyro_y = cbind(observations, body_gyro_x, row.names = NULL)
observations_body_gyro_y_melt <- melt(observations_body_gyro_y, id=1:88)

body_gyro_z = rbind(body_gyro_z_train, body_gyro_z_test)
observations_body_gyro_z = cbind(observations, body_gyro_z, row.names = NULL)
observations_body_gyro_z_melt <- melt(observations_body_gyro_z, id=1:88)

total_acc_x = rbind(total_acc_x_train, total_acc_x_test)
observations_total_acc_x = cbind(observations, total_acc_x, row.names = NULL)
observations_total_acc_x_melt <- melt(observations_total_acc_x, id=1:88)

total_acc_y = rbind(total_acc_y_train, total_acc_y_test)
observations_total_acc_y = cbind(observations, total_acc_y, row.names = NULL)
observations_total_acc_y_melt <- melt(observations_total_acc_y, id=1:88)

total_acc_z = rbind(total_acc_z_train, total_acc_z_test)
observations_total_acc_z = cbind(observations, total_acc_z, row.names = NULL)
observations_total_acc_z_melt <- melt(observations_total_acc_z, id=1:88)

observations = cbind(
  observations, 
  body_acc_x = observations_body_acc_x_melt$value, 
  body_acc_y = observations_body_acc_y_melt$value, 
  body_acc_z = observations_body_acc_z_melt$value, 
  body_gyro_x = observations_body_gyro_x_melt$value,
  body_gyro_y = observations_body_gyro_y_melt$value,
  body_gyro_z = observations_body_gyro_z_melt$value, 
  total_acc_x = observations_total_acc_x_melt$value, 
  total_acc_y = observations_total_acc_y_melt$value, 
  total_acc_z = observations_total_acc_z_melt$value, 
  row.names = NULL 
  )