# _Tidy_ Human Activity Recognition Using Smartphones Dataset

The run_analysis.R script:

1. reads the raw data files
2. Merges the training and the test sets to create one data set called observations.
3. Extracts only the measurements on the mean and standard deviation for each measurement. 
4. Uses descriptive activity names to name the activities in the data set.
5. Appropriately labels the data set with descriptive variable names. 
6. From the data set in step 5, generates an independent tidy data text file that meets the principles of:
* Each variable you measure should be in one column
* Each different observation of that variable should be in a different row
* There should be one table for each "kind" of variable
* If you have multiple tables, they should include a column in the table that allows them to be linked

The data shows the average of each variable for each activity and each subject called meanvariables, which is exported as tidy_data_set.txt.

The raw data:

* activity_labels.txt
* features.txt
* subject_test.txt
* y_test.txt
* X_test.txt
* subject_train.txt
* y_train.txt
* X_train.txt

A tidy data set:

* tidy_data_set.txt

A code book describing each variable and its values in the tidy data set:

* CodeBook.md