# Code Book for Course Project

This is the code book for the "summary_data.txt" file which is produced by running the "run_analysis.R" script on some measurements (which they call "features") obtained from the accelerometers and gyroscopes on the smartphones of a group of test subjects as they performed various activities. The originals datasets (plus more description) came from:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The actual input data used by run_analysis was fetched from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The "summary_data.txt" file contains the result of writing a data.frame using write.table with row.name=F. Said data.frame has 68 columns.

Column name		Description
-----------		-----------
subject			the ID number of a person involved in the study
activity		activity the subject was doing when measurements were taken:
			WALKING
, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS
, SITTING, STANDING, LAYING


tBodyAcc_mean0_X	mean of all the readings for the tBodyAcc-mean()-X feature from the UCI HAR dataset files X_train and X_test
			for the given subject and activity
tBodyAcc_mean0_Y	ditto for tBodyAcc-mean()-Y
tBodyAcc_mean0_Z	ditto for tBodyAcc-mean()-Z
tBodyAcc_std0_X		ditto for tBodyAcc-std()-X
tBodyAcc_std0_Y		ditto for tBodyAcc-std()-Y
tBodyAcc_std0_Z		ditto for tBodyAcc-std()-Z
tGravityAcc_mean0_X	etc -- for each following column name, as for the above 6 columns, but for the feature with "-" replaced 
			by "_", and "()" replaced with "0"
tGravityAcc_mean0_Y
tGravityAcc_mean0_Z
tGravityAcc_std0_X
tGravityAcc_std0_Y
tGravityAcc_std0_Z
tBodyAccJerk_mean0_X
tBodyAccJerk_mean0_Y
tBodyAccJerk_mean0_Z
tBodyAccJerk_std0_X
tBodyAccJerk_std0_Y
tBodyAccJerk_std0_Z
tBodyGyro_mean0_X
tBodyGyro_mean0_Y
tBodyGyro_mean0_Z
tBodyGyro_std0_X
tBodyGyro_std0_Y
tBodyGyro_std0_Z
tBodyGyroJerk_mean0_X
tBodyGyroJerk_mean0_Y
tBodyGyroJerk_mean0_Z
tBodyGyroJerk_std0_X
tBodyGyroJerk_std0_Y
tBodyGyroJerk_std0_Z
tBodyAccMag_mean0
tBodyAccMag_std0
tGravityAccMag_mean0
tGravityAccMag_std0
tBodyAccJerkMag_mean0
tBodyAccJerkMag_std0
tBodyGyroMag_mean0
tBodyGyroMag_std0
tBodyGyroJerkMag_mean0
tBodyGyroJerkMag_std0
fBodyAcc_mean0_X
fBodyAcc_mean0_Y
fBodyAcc_mean0_Z
fBodyAcc_std0_X
fBodyAcc_std0_Y
fBodyAcc_std0_Z
fBodyAccJerk_mean0_X
fBodyAccJerk_mean0_Y
fBodyAccJerk_mean0_Z
fBodyAccJerk_std0_X
fBodyAccJerk_std0_Y
fBodyAccJerk_std0_Z
fBodyGyro_mean0_X
fBodyGyro_mean0_Y
fBodyGyro_mean0_Z
fBodyGyro_std0_X
fBodyGyro_std0_Y
fBodyGyro_std0_Z
fBodyAccMag_mean0
fBodyAccMag_std0
fBodyBodyAccJerkMag_mean0
fBodyBodyAccJerkMag_std0
fBodyBodyGyroMag_mean0
fBodyBodyGyroMag_std0
fBodyBodyGyroJerkMag_mean0
fBodyBodyGyroJerkMag_std0

See the file "feature_info.txt" from the original dataset for more information on the features.




