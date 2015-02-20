# Cleaning-Data-Project
Course project for the Getting and CLeaning Data Coursera course.

# Files:
1. run_analysis.R
2. README.md
3. CodeBook.md

The "run_analysis.R" does the following processing to create a "summary_data.txt" whose format is described in "CodeBook.md":

1. fetches the original dataset from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" and unzips it
2. reads the features.txt file to get the names of all the features, and turns the names into legal R names by changing "-" to "_" and "()" to "0".
3. reads the subject_train.txt, y_train.txt and X_train.txt files into dataframes, sets readable column names
4. does the same for subject_test.txt, y_test.txt and X_test.txt files.
5. cbinds each subject, y and X table to get a data frame whose first two columns are a subject and an activity, following by 591 columns with each of the feature measurements for that (subject, activity) combination; then concatenates the two. 
6. computes which columns are those for means and standard deviations, then creates a new data frame with the subject, activity, and those columns
7. changes the values in the activity column to be human readable
8. creates the summary_data data frame by grouping the data by subject and activity, and taking the mean for all readings with the same (subject,activity) combination.



