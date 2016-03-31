# CodeBook

## Description

To produce a tidy data set compliant with the specifications from the assignment, run the following R script:

..* run_analysis.R


This script will do the following:

..* The .zip file is downloaded from the provided URL and unzipped to a data folder

..* The activity and feature data is loaded from the data files

..* The Mean and Standard deviation columns are extracted while loading trainingset and testset

..* Activity and Subject data is loaded and merged

..* The training and test data sets are merged into a combined data set

..* The activity and subject columns are converted into factors

..* A tidy dataset is created with mean value of each variable per subject/activity pair

..* The tidy dataset is exported and written to output file tidy.txt.


## Data description

The tidy data will contain the following:

### Identifiers

..* subject - The ID of the test subject

..* activity - The type of activity performed when the corresponding measurements were taken


### Measurements

..* tBodyAccMeanX

..* tBodyAccMeanY

..* tBodyAccMeanZ

..* tBodyAccStdX

..* tBodyAccStdY

..* tBodyAccStdZ

..* tGravityAccMeanX

..* tGravityAccMeanY

..* tGravityAccMeanZ

..* tGravityAccStdX

..* tGravityAccStdY

..* tGravityAccStdZ

..* tBodyAccJerkMeanX

..* tBodyAccJerkMeanY

..* tBodyAccJerkMeanZ

..* tBodyAccJerkStdX

..* tBodyAccJerkStdY

..* tBodyAccJerkStdZ

..* tBodyGyroMeanX

..* tBodyGyroMeanY

..* tBodyGyroMeanZ

..* tBodyGyroStdX

..* tBodyGyroStdY

..* tBodyGyroStdZ

..* tBodyGyroJerkMeanX

..* tBodyGyroJerkMeanY

..* tBodyGyroJerkMeanZ

..* tBodyGyroJerkStdX

..* tBodyGyroJerkStdY

..* tBodyGyroJerkStdZ

..* tBodyAccMagMean

..* tBodyAccMagStd

..* tGravityAccMagMean

..* tGravityAccMagStd

..* tBodyAccJerkMagMean

..* tBodyAccJerkMagStd

..* tBodyGyroMagMean

..* tBodyGyroMagStd

..* tBodyGyroJerkMagMean

..* tBodyGyroJerkMagStd

..* fBodyAccMeanX

..* fBodyAccMeanY

..* fBodyAccMeanZ

..* fBodyAccStdX

..* fBodyAccStdY

..* fBodyAccStdZ

..* fBodyAccMeanFreqX

..* fBodyAccMeanFreqY

..* fBodyAccMeanFreqZ

..* fBodyAccJerkMeanX

..* fBodyAccJerkMeanY

..* fBodyAccJerkMeanZ

..* fBodyAccJerkStdX

..* fBodyAccJerkStdY

..* fBodyAccJerkStdZ

..* fBodyAccJerkMeanFreqX

..* fBodyAccJerkMeanFreqY

..* fBodyAccJerkMeanFreqZ

..* fBodyGyroMeanX

..* fBodyGyroMeanY

..* fBodyGyroMeanZ

..* fBodyGyroStdX

..* fBodyGyroStdY

..* fBodyGyroStdZ

..* fBodyGyroMeanFreqX

..* fBodyGyroMeanFreqY

..* fBodyGyroMeanFreqZ

..* fBodyAccMagMean

..* fBodyAccMagStd

..* fBodyAccMagMeanFreq

..* fBodyBodyAccJerkMagMean

..* fBodyBodyAccJerkMagStd

..* fBodyBodyAccJerkMagMeanFreq

..* fBodyBodyGyroMagMean

..* fBodyBodyGyroMagStd

..* fBodyBodyGyroMagMeanFreq

..* fBodyBodyGyroJerkMagMean

..* fBodyBodyGyroJerkMagStd

..* fBodyBodyGyroJerkMagMeanFreq


### Activity Labels

..* 1 WALKING

..* 2 WALKING_UPSTAIRS

..* 3 WALKING_DOWNSTAIRS

..* 4 SITTING

..* 5 STANDING

..* 6 LAYING
