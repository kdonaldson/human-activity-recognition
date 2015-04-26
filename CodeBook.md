---
title: "CodeBook"
author: "Keith D. Donldson"
date: "April 26, 2015"
output: html_document
---

This codebook modifies and updates the codebooks from the Human Activity Recognition Using Smartphones Data Set found in the UCI Machine Learning Repository.  Special attention is given to the tidy data set that is obtained from this data.

# Study Design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

A full description is available at the site where the data was obtained:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones )

# Code Book

## Feature Selection
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are:

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values.
* iqr(): Interquartile range
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal
* kurtosis(): kurtosis of the frequency domain signal
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The following table shows the original column name of the feature and the modified column name that meet the R variable name restrictions.

| Original                              | Modified                              | 
| ------------------------------------- |:-------------------------------------:| 
| tBodyAcc-mean()-X                     | tBodyAcc.mean...X                     | 
| tBodyAcc-mean()-Y                     | tBodyAcc.mean...Y                     |
| tBodyAcc-mean()-Z                     | tBodyAcc.mean...Z                     |
| tBodyAcc-std()-X                      | tBodyAcc.std...X                      |
| tBodyAcc-std()-Y                      | tBodyAcc.std...Y                      |
| tBodyAcc-std()-Z                      | tBodyAcc.std...Z                      |
| tBodyAcc-mad()-X                      | tBodyAcc.mad...X                      |
| tBodyAcc-mad()-Y                      | tBodyAcc.mad...Y                      |
| tBodyAcc-mad()-Z                      | tBodyAcc.mad...Z                      |
| tBodyAcc-max()-X                      | tBodyAcc.max...X                      |
| tBodyAcc-max()-Y                      | tBodyAcc.max...Y                      |
| tBodyAcc-max()-Z                      | tBodyAcc.max...Z                      |
| tBodyAcc-min()-X                      | tBodyAcc.min...X                      |
| tBodyAcc-min()-Y                      | tBodyAcc.min...Y                      |
| tBodyAcc-min()-Z                      | tBodyAcc.min...Z                      |
| tBodyAcc-sma()                        | tBodyAcc.sma..                        |
| tBodyAcc-energy()-X                   | tBodyAcc.energy...X                   |
| tBodyAcc-energy()-Y                   | tBodyAcc.energy...Y                   |
| tBodyAcc-energy()-Z                   | tBodyAcc.energy...Z                   |
| tBodyAcc-iqr()-X                      | tBodyAcc.iqr...X                      |
| tBodyAcc-iqr()-Y                      | tBodyAcc.iqr...Y                      |
| tBodyAcc-iqr()-Z                      | tBodyAcc.iqr...Z                      |
| tBodyAcc-entropy()-X                  | tBodyAcc.entropy...X                  |
| tBodyAcc-entropy()-Y                  | tBodyAcc.entropy...Y                  |
| tBodyAcc-entropy()-Z                  | tBodyAcc.entropy...Z                  |
| tBodyAcc-arCoeff()-X,1                | tBodyAcc.arCoeff...X.1                |
| tBodyAcc-arCoeff()-X,2                | tBodyAcc.arCoeff...X.2                |
| tBodyAcc-arCoeff()-X,3                | tBodyAcc.arCoeff...X.3                |
| tBodyAcc-arCoeff()-X,4                | tBodyAcc.arCoeff...X.4                |
| tBodyAcc-arCoeff()-Y,1                | tBodyAcc.arCoeff...Y.1                |
| tBodyAcc-arCoeff()-Y,2                | tBodyAcc.arCoeff...Y.2                |
| tBodyAcc-arCoeff()-Y,3                | tBodyAcc.arCoeff...Y.3                |
| tBodyAcc-arCoeff()-Y,4                | tBodyAcc.arCoeff...Y.4                |
| tBodyAcc-arCoeff()-Z,1                | tBodyAcc.arCoeff...Z.1                |
| tBodyAcc-arCoeff()-Z,2                | tBodyAcc.arCoeff...Z.2                |
| tBodyAcc-arCoeff()-Z,3                | tBodyAcc.arCoeff...Z.3                |
| tBodyAcc-arCoeff()-Z,4                | tBodyAcc.arCoeff...Z.4                |
| tBodyAcc-correlation()-X,Y            | tBodyAcc.correlation...X.Y            |
| tBodyAcc-correlation()-X,Z            | tBodyAcc.correlation...X.Z            |
| tBodyAcc-correlation()-Y,Z            | tBodyAcc.correlation...Y.Z            |
| tGravityAcc-mean()-X                  | tGravityAcc.mean...X                  |
| tGravityAcc-mean()-Y                  | tGravityAcc.mean...Y                  |
| tGravityAcc-mean()-Z                  | tGravityAcc.mean...Z                  |
| tGravityAcc-std()-X                   | tGravityAcc.std...X                   |
| tGravityAcc-std()-Y                   | tGravityAcc.std...Y                   |
| tGravityAcc-std()-Z                   | tGravityAcc.std...Z                   |
| tGravityAcc-mad()-X                   | tGravityAcc.mad...X                   |
| tGravityAcc-mad()-Y                   | tGravityAcc.mad...Y                   |
| tGravityAcc-mad()-Z                   | tGravityAcc.mad...Z                   |
| tGravityAcc-max()-X                   | tGravityAcc.max...X                   |
| tGravityAcc-max()-Y                   | tGravityAcc.max...Y                   |
| tGravityAcc-max()-Z                   | tGravityAcc.max...Z                   |
| tGravityAcc-min()-X                   | tGravityAcc.min...X                   |
| tGravityAcc-min()-Y                   | tGravityAcc.min...Y                   |
| tGravityAcc-min()-Z                   | tGravityAcc.min...Z                   |
| tGravityAcc-sma()                     | tGravityAcc.sma..                     |
| tGravityAcc-energy()-X                | tGravityAcc.energy...X                |
| tGravityAcc-energy()-Y                | tGravityAcc.energy...Y                |
| tGravityAcc-energy()-Z                | tGravityAcc.energy...Z                |
| tGravityAcc-iqr()-X                   | tGravityAcc.iqr...X                   |
| tGravityAcc-iqr()-Y                   | tGravityAcc.iqr...Y                   |
| tGravityAcc-iqr()-Z                   | tGravityAcc.iqr...Z                   |
| tGravityAcc-entropy()-X               | tGravityAcc.entropy...X               |
| tGravityAcc-entropy()-Y               | tGravityAcc.entropy...Y               |
| tGravityAcc-entropy()-Z               | tGravityAcc.entropy...Z               |
| tGravityAcc-arCoeff()-X,1             | tGravityAcc.arCoeff...X.1             |
| tGravityAcc-arCoeff()-X,2             | tGravityAcc.arCoeff...X.2             |
| tGravityAcc-arCoeff()-X,3             | tGravityAcc.arCoeff...X.3             |
| tGravityAcc-arCoeff()-X,4             | tGravityAcc.arCoeff...X.4             |
| tGravityAcc-arCoeff()-Y,1             | tGravityAcc.arCoeff...Y.1             |
| tGravityAcc-arCoeff()-Y,2             | tGravityAcc.arCoeff...Y.2             |
| tGravityAcc-arCoeff()-Y,3             | tGravityAcc.arCoeff...Y.3             |
| tGravityAcc-arCoeff()-Y,4             | tGravityAcc.arCoeff...Y.4             |
| tGravityAcc-arCoeff()-Z,1             | tGravityAcc.arCoeff...Z.1             |
| tGravityAcc-arCoeff()-Z,2             | tGravityAcc.arCoeff...Z.2             |
| tGravityAcc-arCoeff()-Z,3             | tGravityAcc.arCoeff...Z.3             |
| tGravityAcc-arCoeff()-Z,4             | tGravityAcc.arCoeff...Z.4             |
| tGravityAcc-correlation()-X,Y         | tGravityAcc.correlation...X.Y         |
| tGravityAcc-correlation()-X,Z         | tGravityAcc.correlation...X.Z         |
| tGravityAcc-correlation()-Y,Z         | tGravityAcc.correlation...Y.Z         |
| tBodyAccJerk-mean()-X                 | tBodyAccJerk.mean...X                 |
| tBodyAccJerk-mean()-Y                 | tBodyAccJerk.mean...Y                 |
| tBodyAccJerk-mean()-Z                 | tBodyAccJerk.mean...Z                 |
| tBodyAccJerk-std()-X                  | tBodyAccJerk.std...X                  |
| tBodyAccJerk-std()-Y                  | tBodyAccJerk.std...Y                  |
| tBodyAccJerk-std()-Z                  | tBodyAccJerk.std...Z                  |
| tBodyAccJerk-mad()-X                  | tBodyAccJerk.mad...X                  |
| tBodyAccJerk-mad()-Y                  | tBodyAccJerk.mad...Y                  |
| tBodyAccJerk-mad()-Z                  | tBodyAccJerk.mad...Z                  |
| tBodyAccJerk-max()-X                  | tBodyAccJerk.max...X                  |
| tBodyAccJerk-max()-Y                  | tBodyAccJerk.max...Y                  |
| tBodyAccJerk-max()-Z                  | tBodyAccJerk.max...Z                  |
| tBodyAccJerk-min()-X                  | tBodyAccJerk.min...X                  |
| tBodyAccJerk-min()-Y                  | tBodyAccJerk.min...Y                  |
| tBodyAccJerk-min()-Z                  | tBodyAccJerk.min...Z                  |
| tBodyAccJerk-sma()                    | tBodyAccJerk.sma..                    |
| tBodyAccJerk-energy()-X               | tBodyAccJerk.energy...X               |
| tBodyAccJerk-energy()-Y               | tBodyAccJerk.energy...Y               |
| tBodyAccJerk-energy()-Z               | tBodyAccJerk.energy...Z               |
| tBodyAccJerk-iqr()-X                  | tBodyAccJerk.iqr...X                  |
| tBodyAccJerk-iqr()-Y                  | tBodyAccJerk.iqr...Y                  |
| tBodyAccJerk-iqr()-Z                  | tBodyAccJerk.iqr...Z                  |
| tBodyAccJerk-entropy()-X              | tBodyAccJerk.entropy...X              |
| tBodyAccJerk-entropy()-Y              | tBodyAccJerk.entropy...Y              |
| tBodyAccJerk-entropy()-Z              | tBodyAccJerk.entropy...Z              |
| tBodyAccJerk-arCoeff()-X,1            | tBodyAccJerk.arCoeff...X.1            |
| tBodyAccJerk-arCoeff()-X,2            | tBodyAccJerk.arCoeff...X.2            |
| tBodyAccJerk-arCoeff()-X,3            | tBodyAccJerk.arCoeff...X.3            |
| tBodyAccJerk-arCoeff()-X,4            | tBodyAccJerk.arCoeff...X.4            |
| tBodyAccJerk-arCoeff()-Y,1            | tBodyAccJerk.arCoeff...Y.1            |
| tBodyAccJerk-arCoeff()-Y,2            | tBodyAccJerk.arCoeff...Y.2            |
| tBodyAccJerk-arCoeff()-Y,3            | tBodyAccJerk.arCoeff...Y.3            |
| tBodyAccJerk-arCoeff()-Y,4            | tBodyAccJerk.arCoeff...Y.4            |
| tBodyAccJerk-arCoeff()-Z,1            | tBodyAccJerk.arCoeff...Z.1            |
| tBodyAccJerk-arCoeff()-Z,2            | tBodyAccJerk.arCoeff...Z.2            |
| tBodyAccJerk-arCoeff()-Z,3            | tBodyAccJerk.arCoeff...Z.3            |
| tBodyAccJerk-arCoeff()-Z,4            | tBodyAccJerk.arCoeff...Z.4            |
| tBodyAccJerk-correlation()-X,Y        | tBodyAccJerk.correlation...X.Y        |
| tBodyAccJerk-correlation()-X,Z        | tBodyAccJerk.correlation...X.Z        |
| tBodyAccJerk-correlation()-Y,Z        | tBodyAccJerk.correlation...Y.Z        |
| tBodyGyro-mean()-X                    | tBodyGyro.mean...X                    |
| tBodyGyro-mean()-Y                    | tBodyGyro.mean...Y                    |
| tBodyGyro-mean()-Z                    | tBodyGyro.mean...Z                    |
| tBodyGyro-std()-X                     | tBodyGyro.std...X                     |
| tBodyGyro-std()-Y                     | tBodyGyro.std...Y                     |
| tBodyGyro-std()-Z                     | tBodyGyro.std...Z                     |
| tBodyGyro-mad()-X                     | tBodyGyro.mad...X                     |
| tBodyGyro-mad()-Y                     | tBodyGyro.mad...Y                     |
| tBodyGyro-mad()-Z                     | tBodyGyro.mad...Z                     |
| tBodyGyro-max()-X                     | tBodyGyro.max...X                     |
| tBodyGyro-max()-Y                     | tBodyGyro.max...Y                     |
| tBodyGyro-max()-Z                     | tBodyGyro.max...Z                     |
| tBodyGyro-min()-X                     | tBodyGyro.min...X                     |
| tBodyGyro-min()-Y                     | tBodyGyro.min...Y                     |
| tBodyGyro-min()-Z                     | tBodyGyro.min...Z                     |
| tBodyGyro-sma()                       | tBodyGyro.sma..                       |
| tBodyGyro-energy()-X                  | tBodyGyro.energy...X                  |
| tBodyGyro-energy()-Y                  | tBodyGyro.energy...Y                  |
| tBodyGyro-energy()-Z                  | tBodyGyro.energy...Z                  |
| tBodyGyro-iqr()-X                     | tBodyGyro.iqr...X                     |
| tBodyGyro-iqr()-Y                     | tBodyGyro.iqr...Y                     |
| tBodyGyro-iqr()-Z                     | tBodyGyro.iqr...Z                     |
| tBodyGyro-entropy()-X                 | tBodyGyro.entropy...X                 |
| tBodyGyro-entropy()-Y                 | tBodyGyro.entropy...Y                 |
| tBodyGyro-entropy()-Z                 | tBodyGyro.entropy...Z                 |
| tBodyGyro-arCoeff()-X,1               | tBodyGyro.arCoeff...X.1               |
| tBodyGyro-arCoeff()-X,2               | tBodyGyro.arCoeff...X.2               |
| tBodyGyro-arCoeff()-X,3               | tBodyGyro.arCoeff...X.3               |
| tBodyGyro-arCoeff()-X,4               | tBodyGyro.arCoeff...X.4               |
| tBodyGyro-arCoeff()-Y,1               | tBodyGyro.arCoeff...Y.1               |
| tBodyGyro-arCoeff()-Y,2               | tBodyGyro.arCoeff...Y.2               |
| tBodyGyro-arCoeff()-Y,3               | tBodyGyro.arCoeff...Y.3               |
| tBodyGyro-arCoeff()-Y,4               | tBodyGyro.arCoeff...Y.4               |
| tBodyGyro-arCoeff()-Z,1               | tBodyGyro.arCoeff...Z.1               |
| tBodyGyro-arCoeff()-Z,2               | tBodyGyro.arCoeff...Z.2               |
| tBodyGyro-arCoeff()-Z,3               | tBodyGyro.arCoeff...Z.3               |
| tBodyGyro-arCoeff()-Z,4               | tBodyGyro.arCoeff...Z.4               |
| tBodyGyro-correlation()-X,Y           | tBodyGyro.correlation...X.Y           | 
| tBodyGyro-correlation()-X,Z           | tBodyGyro.correlation...X.Z           | 
| tBodyGyro-correlation()-Y,Z           | tBodyGyro.correlation...Y.Z           | 
| tBodyGyroJerk-mean()-X                | tBodyGyroJerk.mean...X                |
| tBodyGyroJerk-mean()-Y                | tBodyGyroJerk.mean...Y                |
| tBodyGyroJerk-mean()-Z                | tBodyGyroJerk.mean...Z                |
| tBodyGyroJerk-std()-X                 | tBodyGyroJerk.std...X                 |
| tBodyGyroJerk-std()-Y                 | tBodyGyroJerk.std...Y                 |
| tBodyGyroJerk-std()-Z                 | tBodyGyroJerk.std...Z                 |
| tBodyGyroJerk-mad()-X                 | tBodyGyroJerk.mad...X                 |
| tBodyGyroJerk-mad()-Y                 | tBodyGyroJerk.mad...Y                 |
| tBodyGyroJerk-mad()-Z                 | tBodyGyroJerk.mad...Z                 |
| tBodyGyroJerk-max()-X                 | tBodyGyroJerk.max...X                 |
| tBodyGyroJerk-max()-Y                 | tBodyGyroJerk.max...Y                 |
| tBodyGyroJerk-max()-Z                 | tBodyGyroJerk.max...Z                 |
| tBodyGyroJerk-min()-X                 | tBodyGyroJerk.min...X                 |
| tBodyGyroJerk-min()-Y                 | tBodyGyroJerk.min...Y                 |
| tBodyGyroJerk-min()-Z                 | tBodyGyroJerk.min...Z                 |
| tBodyGyroJerk-sma()                   | tBodyGyroJerk.sma..                   |
| tBodyGyroJerk-energy()-X              | tBodyGyroJerk.energy...X              |
| tBodyGyroJerk-energy()-Y              | tBodyGyroJerk.energy...Y              |
| tBodyGyroJerk-energy()-Z              | tBodyGyroJerk.energy...Z              |
| tBodyGyroJerk-iqr()-X                 | tBodyGyroJerk.iqr...X                 |
| tBodyGyroJerk-iqr()-Y                 | tBodyGyroJerk.iqr...Y                 |
| tBodyGyroJerk-iqr()-Z                 | tBodyGyroJerk.iqr...Z                 |
| tBodyGyroJerk-entropy()-X             | tBodyGyroJerk.entropy...X             |
| tBodyGyroJerk-entropy()-Y             | tBodyGyroJerk.entropy...Y             |
| tBodyGyroJerk-entropy()-Z             | tBodyGyroJerk.entropy...Z             |
| tBodyGyroJerk-arCoeff()-X,1           | tBodyGyroJerk.arCoeff...X.1           |
| tBodyGyroJerk-arCoeff()-X,2           | tBodyGyroJerk.arCoeff...X.2           |
| tBodyGyroJerk-arCoeff()-X,3           | tBodyGyroJerk.arCoeff...X.3           |
| tBodyGyroJerk-arCoeff()-X,4           | tBodyGyroJerk.arCoeff...X.4           |
| tBodyGyroJerk-arCoeff()-Y,1           | tBodyGyroJerk.arCoeff...Y.1           |
| tBodyGyroJerk-arCoeff()-Y,2           | tBodyGyroJerk.arCoeff...Y.2           |
| tBodyGyroJerk-arCoeff()-Y,3           | tBodyGyroJerk.arCoeff...Y.3           |
| tBodyGyroJerk-arCoeff()-Y,4           | tBodyGyroJerk.arCoeff...Y.4           |
| tBodyGyroJerk-arCoeff()-Z,1           | tBodyGyroJerk.arCoeff...Z.1           |
| tBodyGyroJerk-arCoeff()-Z,2           | tBodyGyroJerk.arCoeff...Z.2           |
| tBodyGyroJerk-arCoeff()-Z,3           | tBodyGyroJerk.arCoeff...Z.3           |
| tBodyGyroJerk-arCoeff()-Z,4           | tBodyGyroJerk.arCoeff...Z.4           |
| tBodyGyroJerk-correlation()-X,Y       | tBodyGyroJerk.correlation...X.Y       |
| tBodyGyroJerk-correlation()-X,Z       | tBodyGyroJerk.correlation...X.Z       |
| tBodyGyroJerk-correlation()-Y,Z       | tBodyGyroJerk.correlation...Y.Z       |
| tBodyAccMag-mean()                    | tBodyAccMag.mean..                    |
| tBodyAccMag-std()                     | tBodyAccMag.std..                     |
| tBodyAccMag-mad()                     | tBodyAccMag.mad..                     |
| tBodyAccMag-max()                     | tBodyAccMag.max..                     |
| tBodyAccMag-min()                     | tBodyAccMag.min..                     |
| tBodyAccMag-sma()                     | tBodyAccMag.sma..                     |
| tBodyAccMag-energy()                  | tBodyAccMag.energy..                  |
| tBodyAccMag-iqr()                     | tBodyAccMag.iqr..                     |
| tBodyAccMag-entropy()                 | tBodyAccMag.entropy..                 |
| tBodyAccMag-arCoeff()1                | tBodyAccMag.arCoeff..1                |
| tBodyAccMag-arCoeff()2                | tBodyAccMag.arCoeff..2                |
| tBodyAccMag-arCoeff()3                | tBodyAccMag.arCoeff..3                |
| tBodyAccMag-arCoeff()4                | tBodyAccMag.arCoeff..4                |
| tGravityAccMag-mean()                 | tGravityAccMag.mean..                 |
| tGravityAccMag-std()                  | tGravityAccMag.std..                  |
| tGravityAccMag-mad()                  | tGravityAccMag.mad..                  |
| tGravityAccMag-max()                  | tGravityAccMag.max..                  |
| tGravityAccMag-min()                  | tGravityAccMag.min..                  |
| tGravityAccMag-sma()                  | tGravityAccMag.sma..                  |
| tGravityAccMag-energy()               | tGravityAccMag.energy..               |
| tGravityAccMag-iqr()                  | tGravityAccMag.iqr..                  |
| tGravityAccMag-entropy()              | tGravityAccMag.entropy..              |
| tGravityAccMag-arCoeff()1             | tGravityAccMag.arCoeff..1             |
| tGravityAccMag-arCoeff()2             | tGravityAccMag.arCoeff..2             |
| tGravityAccMag-arCoeff()3             | tGravityAccMag.arCoeff..3             |
| tGravityAccMag-arCoeff()4             | tGravityAccMag.arCoeff..4             |
| tBodyAccJerkMag-mean()                | tBodyAccJerkMag.mean..                |
| tBodyAccJerkMag-std()                 | tBodyAccJerkMag.std..                 |
| tBodyAccJerkMag-mad()                 | tBodyAccJerkMag.mad..                 |
| tBodyAccJerkMag-max()                 | tBodyAccJerkMag.max..                 |
| tBodyAccJerkMag-min()                 | tBodyAccJerkMag.min..                 |
| tBodyAccJerkMag-sma()                 | tBodyAccJerkMag.sma..                 |
| tBodyAccJerkMag-energy()              | tBodyAccJerkMag.energy..              |
| tBodyAccJerkMag-iqr()                 | tBodyAccJerkMag.iqr..                 |
| tBodyAccJerkMag-entropy()             | tBodyAccJerkMag.entropy..             |
| tBodyAccJerkMag-arCoeff()1            | tBodyAccJerkMag.arCoeff..1            |
| tBodyAccJerkMag-arCoeff()2            | tBodyAccJerkMag.arCoeff..2            |
| tBodyAccJerkMag-arCoeff()3            | tBodyAccJerkMag.arCoeff..3            |
| tBodyAccJerkMag-arCoeff()4            | tBodyAccJerkMag.arCoeff..4            |
| tBodyGyroMag-mean()                   | tBodyGyroMag.mean..                   |
| tBodyGyroMag-std()                    | tBodyGyroMag.std..                    |
| tBodyGyroMag-mad()                    | tBodyGyroMag.mad..                    |
| tBodyGyroMag-max()                    | tBodyGyroMag.max..                    |
| tBodyGyroMag-min()                    | tBodyGyroMag.min..                    |
| tBodyGyroMag-sma()                    | tBodyGyroMag.sma..                    |
| tBodyGyroMag-energy()                 | tBodyGyroMag.energy..                 |
| tBodyGyroMag-iqr()                    | tBodyGyroMag.iqr..                    |
| tBodyGyroMag-entropy()                | tBodyGyroMag.entropy..                |
| tBodyGyroMag-arCoeff()1               | tBodyGyroMag.arCoeff..1               |
| tBodyGyroMag-arCoeff()2               | tBodyGyroMag.arCoeff..2               |
| tBodyGyroMag-arCoeff()3               | tBodyGyroMag.arCoeff..3               |
| tBodyGyroMag-arCoeff()4               | tBodyGyroMag.arCoeff..4               |
| tBodyGyroJerkMag-mean()               | tBodyGyroJerkMag.mean..               | 
| tBodyGyroJerkMag-std()                | tBodyGyroJerkMag.std..                |
| tBodyGyroJerkMag-mad()                | tBodyGyroJerkMag.mad..                |
| tBodyGyroJerkMag-max()                | tBodyGyroJerkMag.max..                |
| tBodyGyroJerkMag-min()                | tBodyGyroJerkMag.min..                |
| tBodyGyroJerkMag-sma()                | tBodyGyroJerkMag.sma..                |
| tBodyGyroJerkMag-energy()             | tBodyGyroJerkMag.energy..             |
| tBodyGyroJerkMag-iqr()                | tBodyGyroJerkMag.iqr..                |
| tBodyGyroJerkMag-entropy()            | tBodyGyroJerkMag.entropy..            |
| tBodyGyroJerkMag-arCoeff()1           | tBodyGyroJerkMag.arCoeff..1           |
| tBodyGyroJerkMag-arCoeff()2           | tBodyGyroJerkMag.arCoeff..2           |
| tBodyGyroJerkMag-arCoeff()3           | tBodyGyroJerkMag.arCoeff..3           |
| tBodyGyroJerkMag-arCoeff()4           | tBodyGyroJerkMag.arCoeff..4           |
| fBodyAcc-mean()-X                     | fBodyAcc.mean...X                     |                             
| fBodyAcc-mean()-Y                     | fBodyAcc.mean...Y                     |
| fBodyAcc-mean()-Z                     | fBodyAcc.mean...Z                     |
| fBodyAcc-std()-X                      | fBodyAcc.std...X                      |
| fBodyAcc-std()-Y                      | fBodyAcc.std...Y                      |
| fBodyAcc-std()-Z                      | fBodyAcc.std...Z                      |
| fBodyAcc-mad()-X                      | fBodyAcc.mad...X                      |
| fBodyAcc-mad()-Y                      | fBodyAcc.mad...Y                      |
| fBodyAcc-mad()-Z                      | fBodyAcc.mad...Z                      |
| fBodyAcc-max()-X                      | fBodyAcc.max...X                      |
| fBodyAcc-max()-Y                      | fBodyAcc.max...Y                      |
| fBodyAcc-max()-Z                      | fBodyAcc.max...Z                      |
| fBodyAcc-min()-X                      | fBodyAcc.min...X                      |
| fBodyAcc-min()-Y                      | fBodyAcc.min...Y                      |
| fBodyAcc-min()-Z                      | fBodyAcc.min...Z                      |
| fBodyAcc-sma()                        | fBodyAcc.sma..                        |
| fBodyAcc-energy()-X                   | fBodyAcc.energy...X                   |
| fBodyAcc-energy()-Y                   | fBodyAcc.energy...Y                   |
| fBodyAcc-energy()-Z                   | fBodyAcc.energy...Z                   |
| fBodyAcc-iqr()-X                      | fBodyAcc.iqr...X                      |
| fBodyAcc-iqr()-Y                      | fBodyAcc.iqr...Y                      |
| fBodyAcc-iqr()-Z                      | fBodyAcc.iqr...Z                      |
| fBodyAcc-entropy()-X                  | fBodyAcc.entropy...X                  |
| fBodyAcc-entropy()-Y                  | fBodyAcc.entropy...Y                  |
| fBodyAcc-entropy()-Z                  | fBodyAcc.entropy...Z                  |
| fBodyAcc-maxInds-X                    | fBodyAcc.maxInds.X                    |
| fBodyAcc-maxInds-Y                    | fBodyAcc.maxInds.Y                    |
| fBodyAcc-maxInds-Z                    | fBodyAcc.maxInds.Z                    |
| fBodyAcc-meanFreq()-X                 | fBodyAcc.meanFreq...X                 |
| fBodyAcc-meanFreq()-Y                 | fBodyAcc.meanFreq...Y                 |
| fBodyAcc-meanFreq()-Z                 | fBodyAcc.meanFreq...Z                 |
| fBodyAcc-skewness()-X                 | fBodyAcc.skewness...X                 |
| fBodyAcc-kurtosis()-X                 | fBodyAcc.kurtosis...X                 |
| fBodyAcc-skewness()-Y                 | fBodyAcc.skewness...Y                 |
| fBodyAcc-kurtosis()-Y                 | fBodyAcc.kurtosis...Y                 |
| fBodyAcc-skewness()-Z                 | fBodyAcc.skewness...Z                 |
| fBodyAcc-kurtosis()-Z                 | fBodyAcc.kurtosis...Z                 |
| fBodyAcc-bandsEnergy()-1,8            | fBodyAcc.bandsEnergy...1.8            |
| fBodyAcc-bandsEnergy()-9,16           | fBodyAcc.bandsEnergy...9.16           |
| fBodyAcc-bandsEnergy()-17,24          | fBodyAcc.bandsEnergy...17.24          |
| fBodyAcc-bandsEnergy()-25,32          | fBodyAcc.bandsEnergy...25.32          |
| fBodyAcc-bandsEnergy()-33,40          | fBodyAcc.bandsEnergy...33.40          |
| fBodyAcc-bandsEnergy()-41,48          | fBodyAcc.bandsEnergy...41.48          |
| fBodyAcc-bandsEnergy()-49,56          | fBodyAcc.bandsEnergy...49.56          |
| fBodyAcc-bandsEnergy()-57,64          | fBodyAcc.bandsEnergy...57.64          |
| fBodyAcc-bandsEnergy()-1,16           | fBodyAcc.bandsEnergy...1.16           |
| fBodyAcc-bandsEnergy()-17,32          | fBodyAcc.bandsEnergy...17.32          |
| fBodyAcc-bandsEnergy()-33,48          | fBodyAcc.bandsEnergy...33.48          |
| fBodyAcc-bandsEnergy()-49,64          | fBodyAcc.bandsEnergy...49.64          |
| fBodyAcc-bandsEnergy()-1,24           | fBodyAcc.bandsEnergy...1.24           |
| fBodyAcc-bandsEnergy()-25,48          | fBodyAcc.bandsEnergy...25.48          |
| fBodyAcc-bandsEnergy()-1,8            | fBodyAcc.bandsEnergy...1.8.1          |
| fBodyAcc-bandsEnergy()-9,16           | fBodyAcc.bandsEnergy...9.16.1         |
| fBodyAcc-bandsEnergy()-17,24          | fBodyAcc.bandsEnergy...17.24.1        |
| fBodyAcc-bandsEnergy()-25,32          | fBodyAcc.bandsEnergy...25.32.1        |
| fBodyAcc-bandsEnergy()-33,40          | fBodyAcc.bandsEnergy...33.40.1        |
| fBodyAcc-bandsEnergy()-41,48          | fBodyAcc.bandsEnergy...41.48.1        |
| fBodyAcc-bandsEnergy()-49,56          | fBodyAcc.bandsEnergy...49.56.1        |
| fBodyAcc-bandsEnergy()-57,64          | fBodyAcc.bandsEnergy...57.64.1        |
| fBodyAcc-bandsEnergy()-1,16           | fBodyAcc.bandsEnergy...1.16.1         |
| fBodyAcc-bandsEnergy()-17,32          | fBodyAcc.bandsEnergy...17.32.1        |
| fBodyAcc-bandsEnergy()-33,48          | fBodyAcc.bandsEnergy...33.48.1        |
| fBodyAcc-bandsEnergy()-49,64          | fBodyAcc.bandsEnergy...49.64.1        |
| fBodyAcc-bandsEnergy()-1,24           | fBodyAcc.bandsEnergy...1.24.1         |
| fBodyAcc-bandsEnergy()-25,48          | fBodyAcc.bandsEnergy...25.48.1        |
| fBodyAcc-bandsEnergy()-1,8            | fBodyAcc.bandsEnergy...1.8.2          |
| fBodyAcc-bandsEnergy()-9,16           | fBodyAcc.bandsEnergy...9.16.2         |
| fBodyAcc-bandsEnergy()-17,24          | fBodyAcc.bandsEnergy...17.24.2        |
| fBodyAcc-bandsEnergy()-25,32          | fBodyAcc.bandsEnergy...25.32.2        |
| fBodyAcc-bandsEnergy()-33,40          | fBodyAcc.bandsEnergy...33.40.2        |
| fBodyAcc-bandsEnergy()-41,48          | fBodyAcc.bandsEnergy...41.48.2        |
| fBodyAcc-bandsEnergy()-49,56          | fBodyAcc.bandsEnergy...49.56.2        |
| fBodyAcc-bandsEnergy()-57,64          | fBodyAcc.bandsEnergy...57.64.2        |
| fBodyAcc-bandsEnergy()-1,16           | fBodyAcc.bandsEnergy...1.16.          |
| fBodyAcc-bandsEnergy()-17,32          | fBodyAcc.bandsEnergy...17.32.2        |
| fBodyAcc-bandsEnergy()-33,48          | fBodyAcc.bandsEnergy...33.48.2        |
| fBodyAcc-bandsEnergy()-49,64          | fBodyAcc.bandsEnergy...49.64.2        |
| fBodyAcc-bandsEnergy()-1,24           | fBodyAcc.bandsEnergy...1.24.2         |
| fBodyAcc-bandsEnergy()-25,48          | fBodyAcc.bandsEnergy...25.48.2        |
| fBodyAccJerk-mean()-X                 | fBodyAccJerk.mean...X                 |
| fBodyAccJerk-mean()-Y                 | fBodyAccJerk.mean...Y                 |
| fBodyAccJerk-mean()-Z                 | fBodyAccJerk.mean...Z                 |
| fBodyAccJerk-std()-X                  | fBodyAccJerk.std...X                  |
| fBodyAccJerk-std()-Y                  | fBodyAccJerk.std...Y                  |
| fBodyAccJerk-std()-Z                  | fBodyAccJerk.std...Z                  |
| fBodyAccJerk-mad()-X                  | fBodyAccJerk.mad...X                  |
| fBodyAccJerk-mad()-Y                  | fBodyAccJerk.mad...Y                  |
| fBodyAccJerk-mad()-Z                  | fBodyAccJerk.mad...Z                  |
| fBodyAccJerk-max()-X                  | fBodyAccJerk.max...X                  |
| fBodyAccJerk-max()-Y                  | fBodyAccJerk.max...Y                  |
| fBodyAccJerk-max()-Z                  | fBodyAccJerk.max...Z                  |
| fBodyAccJerk-min()-X                  | fBodyAccJerk.min...X                  |
| fBodyAccJerk-min()-Y                  | fBodyAccJerk.min...Y                  |
| fBodyAccJerk-min()-Z                  | fBodyAccJerk.min...Z                  |
| fBodyAccJerk-sma()                    | fBodyAccJerk.sma..                    |
| fBodyAccJerk-energy()-X               | fBodyAccJerk.energy...X               |
| fBodyAccJerk-energy()-Y               | fBodyAccJerk.energy...Y               |              
| fBodyAccJerk-energy()-Z               | fBodyAccJerk.energy...Z               |               
| fBodyAccJerk-iqr()-X                  | fBodyAccJerk.iqr...X                  |
| fBodyAccJerk-iqr()-Y                  | fBodyAccJerk.iqr...Y                  |
| fBodyAccJerk-iqr()-Z                  | fBodyAccJerk.iqr...Z                  |
| fBodyAccJerk-entropy()-X              | fBodyAccJerk.entropy...X              |
| fBodyAccJerk-entropy()-Y              | fBodyAccJerk.entropy...Y              |
| fBodyAccJerk-entropy()-Z              | fBodyAccJerk.entropy...Z              |
| fBodyAccJerk-maxInds-X                | fBodyAccJerk.maxInds.X                |
| fBodyAccJerk-maxInds-Y                | fBodyAccJerk.maxInds.Y                |
| fBodyAccJerk-maxInds-Z                | fBodyAccJerk.maxInds.Z                |
| fBodyAccJerk-meanFreq()-X             | fBodyAccJerk.meanFreq...X             |
| fBodyAccJerk-meanFreq()-Y             | fBodyAccJerk.meanFreq...Y             |
| fBodyAccJerk-meanFreq()-Z             | fBodyAccJerk.meanFreq...Z             |
| fBodyAccJerk-skewness()-X             | fBodyAccJerk.skewness...X             |
| fBodyAccJerk-kurtosis()-X             | fBodyAccJerk.kurtosis...X             |
| fBodyAccJerk-skewness()-Y             | fBodyAccJerk.skewness...Y             |
| fBodyAccJerk-kurtosis()-Y             | fBodyAccJerk.kurtosis...Y             |
| fBodyAccJerk-skewness()-Z             | fBodyAccJerk.skewness...Z             |
| fBodyAccJerk-kurtosis()-Z             | fBodyAccJerk.kurtosis...Z             |
| fBodyAccJerk-bandsEnergy()-1,8        | fBodyAccJerk.bandsEnergy...1.8        |
| fBodyAccJerk-bandsEnergy()-9,16       | fBodyAccJerk.bandsEnergy...9.16       |
| fBodyAccJerk-bandsEnergy()-17,24      | fBodyAccJerk.bandsEnergy...17.24      |
| fBodyAccJerk-bandsEnergy()-25,32      | fBodyAccJerk.bandsEnergy...25.32      |
| fBodyAccJerk-bandsEnergy()-33,40      | fBodyAccJerk.bandsEnergy...33.40      |
| fBodyAccJerk-bandsEnergy()-41,48      | fBodyAccJerk.bandsEnergy...41.48      |
| fBodyAccJerk-bandsEnergy()-49,56      | fBodyAccJerk.bandsEnergy...49.56      |
| fBodyAccJerk-bandsEnergy()-57,64      | fBodyAccJerk.bandsEnergy...57.64      |
| fBodyAccJerk-bandsEnergy()-1,16       | fBodyAccJerk.bandsEnergy...1.16       |
| fBodyAccJerk-bandsEnergy()-17,32      | fBodyAccJerk.bandsEnergy...17.32      |
| fBodyAccJerk-bandsEnergy()-33,48      | fBodyAccJerk.bandsEnergy...33.48      |
| fBodyAccJerk-bandsEnergy()-49,64      | fBodyAccJerk.bandsEnergy...49.64      |
| fBodyAccJerk-bandsEnergy()-1,24       | fBodyAccJerk.bandsEnergy...1.24       |
| fBodyAccJerk-bandsEnergy()-25,48      | fBodyAccJerk.bandsEnergy...25.48      |
| fBodyAccJerk-bandsEnergy()-1,8        | fBodyAccJerk.bandsEnergy...1.8.1      |
| fBodyAccJerk-bandsEnergy()-9,16       | fBodyAccJerk.bandsEnergy...9.16.1     |
| fBodyAccJerk-bandsEnergy()-17,24      | fBodyAccJerk.bandsEnergy...17.24.1    |
| fBodyAccJerk-bandsEnergy()-25,32      | fBodyAccJerk.bandsEnergy...25.32.1    |
| fBodyAccJerk-bandsEnergy()-33,40      | fBodyAccJerk.bandsEnergy...33.40.1    |
| fBodyAccJerk-bandsEnergy()-41,48      | fBodyAccJerk.bandsEnergy...41.48.1    |
| fBodyAccJerk-bandsEnergy()-49,56      | fBodyAccJerk.bandsEnergy...49.56.1    |
| fBodyAccJerk-bandsEnergy()-57,64      | fBodyAccJerk.bandsEnergy...57.64.1    |
| fBodyAccJerk-bandsEnergy()-1,16       | fBodyAccJerk.bandsEnergy...1.16.1     |
| fBodyAccJerk-bandsEnergy()-17,32      | fBodyAccJerk.bandsEnergy...17.32.1    |
| fBodyAccJerk-bandsEnergy()-33,48      | fBodyAccJerk.bandsEnergy...33.48.1    |
| fBodyAccJerk-bandsEnergy()-49,64      | fBodyAccJerk.bandsEnergy...49.64.1    |
| fBodyAccJerk-bandsEnergy()-1,24       | fBodyAccJerk.bandsEnergy...1.24.1     |
| fBodyAccJerk-bandsEnergy()-25,48      | fBodyAccJerk.bandsEnergy...25.48.1    |
| fBodyAccJerk-bandsEnergy()-1,8        | fBodyAccJerk.bandsEnergy...1.8.2      |
| fBodyAccJerk-bandsEnergy()-9,16       | fBodyAccJerk.bandsEnergy...9.16.2     |
| fBodyAccJerk-bandsEnergy()-17,24      | fBodyAccJerk.bandsEnergy...17.24.2    |
| fBodyAccJerk-bandsEnergy()-25,32      | fBodyAccJerk.bandsEnergy...25.32.2    |
| fBodyAccJerk-bandsEnergy()-33,40      | fBodyAccJerk.bandsEnergy...33.40.2    |
| fBodyAccJerk-bandsEnergy()-41,48      | fBodyAccJerk.bandsEnergy...41.48.2    |
| fBodyAccJerk-bandsEnergy()-49,56      | fBodyAccJerk.bandsEnergy...49.56.2    |
| fBodyAccJerk-bandsEnergy()-57,64      | fBodyAccJerk.bandsEnergy...57.64.2    |
| fBodyAccJerk-bandsEnergy()-1,16       | fBodyAccJerk.bandsEnergy...1.16.2     |
| fBodyAccJerk-bandsEnergy()-17,32      | fBodyAccJerk.bandsEnergy...17.32.2    |
| fBodyAccJerk-bandsEnergy()-33,48      | fBodyAccJerk.bandsEnergy...33.48.2    |
| fBodyAccJerk-bandsEnergy()-49,64      | fBodyAccJerk.bandsEnergy...49.64.2    |
| fBodyAccJerk-bandsEnergy()-1,24       | fBodyAccJerk.bandsEnergy...1.24.2     |
| fBodyAccJerk-bandsEnergy()-25,48      | fBodyAccJerk.bandsEnergy...25.48.2    |
| fBodyGyro-mean()-X                    | fBodyGyro.mean...X                    |
| fBodyGyro-mean()-Y                    | fBodyGyro.mean...Y                    |
| fBodyGyro-mean()-Z                    | fBodyGyro.mean...Z                    |
| fBodyGyro-std()-X                     | fBodyGyro.std...X                     |
| fBodyGyro-std()-Y                     | fBodyGyro.std...Y                     |
| fBodyGyro-std()-Z                     | fBodyGyro.std...Z                     |
| fBodyGyro-mad()-X                     | fBodyGyro.mad...X                     |
| fBodyGyro-mad()-Y                     | fBodyGyro.mad...Y                     |
| fBodyGyro-mad()-Z                     | fBodyGyro.mad...Z                     |
| fBodyGyro-max()-X                     | fBodyGyro.max...X                     |
| fBodyGyro-max()-Y                     | fBodyGyro.max...Y                     |
| fBodyGyro-max()-Z                     | fBodyGyro.max...Z                     |
| fBodyGyro-min()-X                     | fBodyGyro.min...X                     |
| fBodyGyro-min()-Y                     | fBodyGyro.min...Y                     |
| fBodyGyro-min()-Z                     | fBodyGyro.min...Z                     |
| fBodyGyro-sma()                       | fBodyGyro.sma..                       |
| fBodyGyro-energy()-X                  | fBodyGyro.energy...X                  |
| fBodyGyro-energy()-Y                  | fBodyGyro.energy...Y                  |
| fBodyGyro-energy()-Z                  | fBodyGyro.energy...Z                  |
| fBodyGyro-iqr()-X                     | fBodyGyro.iqr...X                     |
| fBodyGyro-iqr()-Y                     | fBodyGyro.iqr...Y                     |
| fBodyGyro-iqr()-Z                     | fBodyGyro.iqr...Z                     |
| fBodyGyro-entropy()-X                 | fBodyGyro.entropy...X                 |
| fBodyGyro-entropy()-Y                 | fBodyGyro.entropy...Y                 |
| fBodyGyro-entropy()-Z                 | fBodyGyro.entropy...Z                 |
| fBodyGyro-maxInds-X                   | fBodyGyro.maxInds.X                   |
| fBodyGyro-maxInds-Y                   | fBodyGyro.maxInds.Y                   |
| fBodyGyro-maxInds-Z                   | fBodyGyro.maxInds.Z                   |
| fBodyGyro-meanFreq()-X                | fBodyGyro.meanFreq...X                |
| fBodyGyro-meanFreq()-Y                | fBodyGyro.meanFreq...Y                |
| fBodyGyro-meanFreq()-Z                | fBodyGyro.meanFreq...Z                |
| fBodyGyro-skewness()-X                | fBodyGyro.skewness...X                |
| fBodyGyro-kurtosis()-X                | fBodyGyro.kurtosis...X                |
| fBodyGyro-skewness()-Y                | fBodyGyro.skewness...Y                |
| fBodyGyro-kurtosis()-Y                | fBodyGyro.kurtosis...Y                |
| fBodyGyro-skewness()-Z                | fBodyGyro.skewness...Z                |
| fBodyGyro-kurtosis()-Z                | fBodyGyro.kurtosis...Z                |
| fBodyGyro-bandsEnergy()-1,8           | fBodyGyro.bandsEnergy...1.8           |
| fBodyGyro-bandsEnergy()-9,16          | fBodyGyro.bandsEnergy...9.16          |
| fBodyGyro-bandsEnergy()-17,24         | fBodyGyro.bandsEnergy...17.24         |
| fBodyGyro-bandsEnergy()-25,32         | fBodyGyro.bandsEnergy...25.32         |
| fBodyGyro-bandsEnergy()-33,40         | fBodyGyro.bandsEnergy...33.40         |
| fBodyGyro-bandsEnergy()-41,48         | fBodyGyro.bandsEnergy...41.48         |
| fBodyGyro-bandsEnergy()-49,56         | fBodyGyro.bandsEnergy...49.56         |
| fBodyGyro-bandsEnergy()-57,64         | fBodyGyro.bandsEnergy...57.64         |
| fBodyGyro-bandsEnergy()-1,16          | fBodyGyro.bandsEnergy...1.16          |
| fBodyGyro-bandsEnergy()-17,32         | fBodyGyro.bandsEnergy...17.32         |
| fBodyGyro-bandsEnergy()-33,48         | fBodyGyro.bandsEnergy...33.48         |
| fBodyGyro-bandsEnergy()-49,64         | fBodyGyro.bandsEnergy...49.64         |
| fBodyGyro-bandsEnergy()-1,24          | fBodyGyro.bandsEnergy...1.24          |
| fBodyGyro-bandsEnergy()-25,48         | fBodyGyro.bandsEnergy...25.48         |
| fBodyGyro-bandsEnergy()-1,8           | fBodyGyro.bandsEnergy...1.8.1         |
| fBodyGyro-bandsEnergy()-9,16          | fBodyGyro.bandsEnergy...9.16.1        |
| fBodyGyro-bandsEnergy()-17,24         | fBodyGyro.bandsEnergy...17.24.1       |
| fBodyGyro-bandsEnergy()-25,32         | fBodyGyro.bandsEnergy...25.32.1       |
| fBodyGyro-bandsEnergy()-33,40         | fBodyGyro.bandsEnergy...33.40.1       |
| fBodyGyro-bandsEnergy()-41,48         | fBodyGyro.bandsEnergy...41.48.1       |
| fBodyGyro-bandsEnergy()-49,56         | fBodyGyro.bandsEnergy...49.56.1       |
| fBodyGyro-bandsEnergy()-57,64         | fBodyGyro.bandsEnergy...57.64.1       |
| fBodyGyro-bandsEnergy()-1,16          | fBodyGyro.bandsEnergy...1.16.1        |
| fBodyGyro-bandsEnergy()-17,32         | fBodyGyro.bandsEnergy...17.32.1       |
| fBodyGyro-bandsEnergy()-33,48         | fBodyGyro.bandsEnergy...33.48.1       |
| fBodyGyro-bandsEnergy()-49,64         | fBodyGyro.bandsEnergy...49.64.1       |
| fBodyGyro-bandsEnergy()-1,24          | fBodyGyro.bandsEnergy...1.24.1        |
| fBodyGyro-bandsEnergy()-25,48         | fBodyGyro.bandsEnergy...25.48.1       |
| fBodyGyro-bandsEnergy()-1,8           | fBodyGyro.bandsEnergy...1.8.2         |
| fBodyGyro-bandsEnergy()-9,16          | fBodyGyro.bandsEnergy...9.16.2        |
| fBodyGyro-bandsEnergy()-17,24         | fBodyGyro.bandsEnergy...17.24.2       |
| fBodyGyro-bandsEnergy()-25,32         | fBodyGyro.bandsEnergy...25.32.2       |
| fBodyGyro-bandsEnergy()-33,40         | fBodyGyro.bandsEnergy...33.40.2       |
| fBodyGyro-bandsEnergy()-41,48         | fBodyGyro.bandsEnergy...41.48.2       |
| fBodyGyro-bandsEnergy()-49,56         | fBodyGyro.bandsEnergy...49.56.2       |
| fBodyGyro-bandsEnergy()-57,64         | fBodyGyro.bandsEnergy...57.64.2       |
| fBodyGyro-bandsEnergy()-1,16          | fBodyGyro.bandsEnergy...1.16.2        |
| fBodyGyro-bandsEnergy()-17,32         | fBodyGyro.bandsEnergy...17.32.2       |
| fBodyGyro-bandsEnergy()-33,48         | fBodyGyro.bandsEnergy...33.48.2       |
| fBodyGyro-bandsEnergy()-49,64         | fBodyGyro.bandsEnergy...49.64.2       |
| fBodyGyro-bandsEnergy()-1,24          | fBodyGyro.bandsEnergy...1.24.2        |
| fBodyGyro-bandsEnergy()-25,48         | fBodyGyro.bandsEnergy...25.48.2       |
| fBodyAccMag-mean()                    | fBodyAccMag.mean..                    |
| fBodyAccMag-std()                     | fBodyAccMag.std..                     |
| fBodyAccMag-mad()                     | fBodyAccMag.mad..                     |
| fBodyAccMag-max()                     | fBodyAccMag.max..                     |
| fBodyAccMag-min()                     | fBodyAccMag.min..                     |
| fBodyAccMag-sma()                     | fBodyAccMag.sma..                     |
| fBodyAccMag-energy()                  | fBodyAccMag.energy..                  |
| fBodyAccMag-iqr()                     | fBodyAccMag.iqr..                     |
| fBodyAccMag-entropy()                 | fBodyAccMag.entropy..                 |
| fBodyAccMag-maxInds                   | fBodyAccMag.maxInds                   |
| fBodyAccMag-meanFreq()                | fBodyAccMag.meanFreq..                |
| fBodyAccMag-skewness()                | fBodyAccMag.skewness..                |
| fBodyAccMag-kurtosis()                | fBodyAccMag.kurtosis..                |
| fBodyBodyAccJerkMag-mean()            | fBodyBodyAccJerkMag.mean..            |
| fBodyBodyAccJerkMag-std()             | fBodyBodyAccJerkMag.std..             |
| fBodyBodyAccJerkMag-mad()             | fBodyBodyAccJerkMag.mad..             |
| fBodyBodyAccJerkMag-max()             | fBodyBodyAccJerkMag.max..             |
| fBodyBodyAccJerkMag-min()             | fBodyBodyAccJerkMag.min..             |
| fBodyBodyAccJerkMag-sma()             | fBodyBodyAccJerkMag.sma..             |
| fBodyBodyAccJerkMag-energy()          | fBodyBodyAccJerkMag.energy..          |
| fBodyBodyAccJerkMag-iqr()             | fBodyBodyAccJerkMag.iqr..             |
| fBodyBodyAccJerkMag-entropy()         | fBodyBodyAccJerkMag.entropy..         |
| fBodyBodyAccJerkMag-maxInds           | fBodyBodyAccJerkMag.maxInds           |
| fBodyBodyAccJerkMag-meanFreq()        | fBodyBodyAccJerkMag.meanFreq..        |
| fBodyBodyAccJerkMag-skewness()        | fBodyBodyAccJerkMag.skewness..        |
| fBodyBodyAccJerkMag-kurtosis()        | fBodyBodyAccJerkMag.kurtosis..        |
| fBodyBodyGyroMag-mean()               | fBodyBodyGyroMag.mean..               |
| fBodyBodyGyroMag-std()                | fBodyBodyGyroMag.std..                |
| fBodyBodyGyroMag-mad()                | fBodyBodyGyroMag.mad..                |
| fBodyBodyGyroMag-max()                | fBodyBodyGyroMag.max..                |
| fBodyBodyGyroMag-min()                | fBodyBodyGyroMag.min..                |
| fBodyBodyGyroMag-sma()                | fBodyBodyGyroMag.sma..                |
| fBodyBodyGyroMag-energy()             | fBodyBodyGyroMag.energy..             |
| fBodyBodyGyroMag-iqr()                | fBodyBodyGyroMag.iqr..                |
| fBodyBodyGyroMag-entropy()            | fBodyBodyGyroMag.entropy..            |
| fBodyBodyGyroMag-maxInds              | fBodyBodyGyroMag.maxInds              |
| fBodyBodyGyroMag-meanFreq()           | fBodyBodyGyroMag.meanFreq..           |
| fBodyBodyGyroMag-skewness()           | fBodyBodyGyroMag.skewness..           |
| fBodyBodyGyroMag-kurtosis()           | fBodyBodyGyroMag.kurtosis..           |
| fBodyBodyGyroJerkMag-mean()           | fBodyBodyGyroJerkMag.mean..           |
| fBodyBodyGyroJerkMag-std()            | fBodyBodyGyroJerkMag.std..            |
| fBodyBodyGyroJerkMag-mad()            | fBodyBodyGyroJerkMag.mad..            |
| fBodyBodyGyroJerkMag-max()            | fBodyBodyGyroJerkMag.max..            |
| fBodyBodyGyroJerkMag-min()            | fBodyBodyGyroJerkMag.min..            |
| fBodyBodyGyroJerkMag-sma()            | fBodyBodyGyroJerkMag.sma..            |
| fBodyBodyGyroJerkMag-energy()         | fBodyBodyGyroJerkMag.energy..         |
| fBodyBodyGyroJerkMag-iqr()            | fBodyBodyGyroJerkMag.iqr..            |
| fBodyBodyGyroJerkMag-entropy()        | fBodyBodyGyroJerkMag.entropy..        |
| fBodyBodyGyroJerkMag-maxInds          | fBodyBodyGyroJerkMag.maxInds          |
| fBodyBodyGyroJerkMag-meanFreq()       | fBodyBodyGyroJerkMag.meanFreq..       |
| fBodyBodyGyroJerkMag-skewness()       | fBodyBodyGyroJerkMag.skewness..       |
| fBodyBodyGyroJerkMag-kurtosis()       | fBodyBodyGyroJerkMag.kurtosis..       |
| angle(tBodyAccMean,gravity)           | angle.tBodyAccMean.gravity.           |
| angle(tBodyAccJerkMean),gravityMean)  | angle.tBodyAccJerkMean..gravityMean.  |
| angle(tBodyGyroMean,gravityMean)      | angle.tBodyGyroMean.gravityMean.      |
| angle(tBodyGyroJerkMean,gravityMean)  | angle.tBodyGyroJerkMean.gravityMean.  |
| angle(X,gravityMean)                  | angle.X.gravityMean.                  |
| angle(Y,gravityMean)                  | angle.Y.gravityMean.                  |
| angle(Z,gravityMean)                  | angle.Z.gravityMean.                  |

## Tidy Data
The tidy data file, tiny_data_set.txt, shows the average of each mean and standard deviation measurement variable for each activity and each subject.

This data meets the principles of tiny data:

1. Each variable you measure should be in one column
2. Each different observation of that variable should be in a different row
3. There should be one table for each "kind" of variable
4. If you have multiple tables, they should include a column in the table that allows them to be linked

The SUBJECT and MEASUREMENT variables are used to represent individual rows. The ACTIVITY variable are cast as column names. The data values are the mean.

* subject
    + In a range from 1 to 30, the subject who performed the activity for each window sample is identified. 
* measurement (_measurement codes follow_)
    + tBodyAcc.mean...X
    + tBodyAcc.mean...Y
    + tBodyAcc.mean...Z
    + tBodyAcc.std...X
    + tBodyAcc.std...Y
    + tBodyAcc.std...Z
    + tGravityAcc.mean...X
    + tGravityAcc.mean...Y
    + tGravityAcc.mean...Z
    + tGravityAcc.std...X
    + tGravityAcc.std...Y
    + tGravityAcc.std...Z
    + tBodyAccJerk.mean...X
    + tBodyAccJerk.mean...Y
    + tBodyAccJerk.mean...Z
    + tBodyAccJerk.std...X
    + tBodyAccJerk.std...Y
    + tBodyAccJerk.std...Z
    + tBodyGyro.mean...X
    + tBodyGyro.mean...Y
    + tBodyGyro.mean...Z
    + tBodyGyro.std...X
    + tBodyGyro.std...Y
    + tBodyGyro.std...Z
    + tBodyGyroJerk.mean...X
    + tBodyGyroJerk.mean...Y
    + tBodyGyroJerk.mean...Z
    + tBodyGyroJerk.std...X
    + tBodyGyroJerk.std...Y
    + tBodyGyroJerk.std...Z
    + tBodyAccMag.mean..
    + tBodyAccMag.std..
    + tGravityAccMag.mean..
    + tGravityAccMag.std..
    + tBodyAccJerkMag.mean..
    + tBodyAccJerkMag.std..
    + tBodyGyroMag.mean..
    + tBodyGyroMag.std..
    + tBodyGyroJerkMag.mean..
    + tBodyGyroJerkMag.std..
    + fBodyAcc.mean...X
    + fBodyAcc.mean...Y
    + fBodyAcc.mean...Z
    + fBodyAcc.std...X
    + fBodyAcc.std...Y
    + fBodyAcc.std...Z
    + fBodyAcc.meanFreq...X
    + fBodyAcc.meanFreq...Y
    + fBodyAcc.meanFreq...Z
    + fBodyAccJerk.mean...X
    + fBodyAccJerk.mean...Y
    + fBodyAccJerk.mean...Z
    + fBodyAccJerk.std...X
    + fBodyAccJerk.std...Y
    + fBodyAccJerk.std...Z
    + fBodyAccJerk.meanFreq...X
    + fBodyAccJerk.meanFreq...Y
    + fBodyAccJerk.meanFreq...Z
    + fBodyGyro.mean...X
    + fBodyGyro.mean...Y
    + fBodyGyro.mean...Z
    + fBodyGyro.std...X
    + fBodyGyro.std...Y
    + fBodyGyro.std...Z
    + fBodyGyro.meanFreq...X
    + fBodyGyro.meanFreq...Y
    + fBodyGyro.meanFreq...Z
    + fBodyAccMag.mean..
    + fBodyAccMag.std..
    + fBodyAccMag.meanFreq..
    + fBodyBodyAccJerkMag.mean..
    + fBodyBodyAccJerkMag.std..
    + fBodyBodyAccJerkMag.meanFreq..
    + fBodyBodyGyroMag.mean..
    + fBodyBodyGyroMag.std..
    + fBodyBodyGyroMag.meanFreq..
    + fBodyBodyGyroJerkMag.mean..
    + fBodyBodyGyroJerkMag.std..
    + fBodyBodyGyroJerkMag.meanFreq..
    + angle.tBodyAccMean.gravity.
    + angle.tBodyAccJerkMean..gravityMean.
    + angle.tBodyGyroMean.gravityMean.
    + angle.tBodyGyroJerkMean.gravityMean.
    + angle.X.gravityMean.
    + angle.Y.gravityMean.
    + angle.Z.gravityMean.
* laying
    + The average of the measurement and subject for the laying activity 
* sitting
    + The average of the measurement and subject for the sitting activity 
* standing
    + The average of the measurement and subject for the standing activity 
* walking
    + The average of the measurement and subject for the walking activity 
* walking_downstairs
    + The average of the measurement and subject for the walking downstairs activity 
* walking_upstairs
    + The average of the measurement and subject for the walking upstairs activity 