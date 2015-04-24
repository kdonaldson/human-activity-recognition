#The instruction list
#Ideally a computer script (in R :-), but I suppose Python is ok too...)
#The input for the script is the raw data
#The output is the processed, tidy data
#There are no parameters to the script
#In some cases it will not be possible to script every step. In that case you should provide instructions like:

#Step 1 - take the raw file, run version 3.1.2 of summarize software with parameters a=1, b=2, c=3
#Step 2 - run the software separately for each sample
#Step 3 - take column three of outputfile.out for each sample and that is the corresponding row in the output data set

#this.dir <- dirname(parent.frame(2)$ofile)
#setwd(this.dir)
this.dir <- "/Users/kdonaldson/Projects/GettingCleaningData/Project/human-activity-recognition"

setwd(paste(this.dir, "/UCI HAR Dataset/", sep = ""))
activities = read.table("activity_labels.txt")
features = read.table("features.txt")

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


# library("dplyr")
library(plyr)

# Rename subjects vectors
subjects_train = rename(subjects_train, c("V1"="subject"))
subjects_test = rename(subjects_test, c("V1"="subject"))

# Rename activity vectors
activities_train = rename(activities_train, c("V1"="activity"))
activities_test = rename(activities_test, c("V1"="activity"))

# Rename features columns
colnames(features_train) <- features[,2]
colnames(features_test) <- features[,2]

# Recode activities based on lookup table
for(i in seq_len(nrow(activities))){  #Make replacements
  col.to <- activities$V2[i] 
  col.from <- activities$V1[i]
  activities_train$activity <- ifelse(activities_train$activity == col.from, col.to, activities_train$activity)
  activities_test$activity <- ifelse(activities_test$activity == col.from, col.to, activities_test$activity)
}

# Merge data frames
train = cbind(subjects_train, activities_train, features_train)
