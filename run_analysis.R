#
# if(!file.exists("course project")){dir.create("course project")}
setwd("course project")
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists("fitness.zip")) {
  # note that method="curl" didn't work for me; this did (on Windows 8.1 64-bit)
  download.file(fileUrl,destfile="fitness.zip")
}
#
if (!file.exists("UCI HAR Dataset")) {
#  dir.create("UCI HAR Dataset") ????
  unzip("fitness.zip")
}
setwd("UCI HAR Dataset")
# read table features; set colnames to c("featid","name")
features <- read.table("features.txt")
colnames(features) <- c("featid","featname")
features$featname <- gsub("()","0",gsub("-","_",features$featname),fixed=T)
# read table activity_labels
actlabs <- read.table("activity_labels.txt")
colnames(actlabs) <- c("actid","actname")
# read table train\subject_train, y_train, x_train; set column names; cbind them
subjtrain <- read.table("train\\subject_train.txt")
colnames(subjtrain) <- "subject"
ytrain <- read.table("train\\y_train.txt")
colnames(ytrain) <- "activity"
xtrain <- read.table("train\\x_train.txt")
colnames(xtrain) <- features$featname
# read table test\subject_train, y_test, x_test; set columns names; cbind them
subjtest <- read.table("test\\subject_test.txt")
colnames(subjtest) <- "subject"
ytest <- read.table("test\\y_test.txt")
colnames(ytest) <- "activity"
xtest <- read.table("test\\x_test.txt")
colnames(xtest) <- features$featname
# combine test and train into one big table
tab <- rbind(cbind(subjtest,ytest,xtest),cbind(subjtrain,ytrain,xtrain))
# get the column id of columns that have means
means <- features[grep("_mean0",features$featname,fixed=T),]$featid
# ditto fir std dev
stds <- features[grep("_std0",features$featname,fixed=T),]$featid
# combine them, plus the subject and activity columns
t <- sort(c(1,2,means+2,stds+2))
# select columns for subject, activity, mean, stdev
tidytab <- tab[,t]
# set activity column to a factor using activity_labels
tidytab$activity <- sapply(tidytab$activity,function(x){actlabs$actname[x]})
# now group by subject and activity
t2 <- group_by(tidytab,subject,activity)
# construct an expression that will takes the mean of all the columns within (subject,activity) group
cols <- names(tidytab[3:length(names(tidytab))])
colexp <- paste(cols, "=mean(", cols, ")",sep="",collapse=",")
exp <- paste("summarize(t2,",colexp,")")
e <- parse(text=exp)
summary_data <- eval(e)
setwd("..\\..")