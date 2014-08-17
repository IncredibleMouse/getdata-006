##########################################################
## Getting and Cleaning Data, Course Project, Coursera Project: getdata-006
## Author: IncredibleMouse
## Date: 08/17/2014

## This project cleans and organizes a data set comprised of measurements 
## captured by subjects performing various activities while wearing a smartphone, 
## The original data was culled by extracting just the mean and standard 
## deviation variables, and for each subject and activity performed, a mean
## was aggregated - for both the training data set and the test data set.

## The original data set can be obtained from: 
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## The original data description can be viewed at the UCI Machine Learning Repository
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## For more information about this cleaned data set
## https://github.com/IncredibleMouse/getdata-006

## To run this analysis, be sure you have the /data folder and its contents,
## also available at the above listed github repository.

## RESULT: tidyset.csv
## The resulting cleaned and aggregated data set produced: tidyset.csv
## The data consists of a subject_number, an activity_name, and the mean 
## of the available measurements (for mean and std. deviation values only)
##########################################################

## setwd("C:/Personal/R/class/getdata-006")
library(data.table)
set.seed(5555)


if(!file.exists("data")) {dir.create("data")}

## Retrieve the measurement feature column labels (tab separated, 561 rows)
    labels <- data.table(read.csv(file="data/features.txt",skip=0, sep = "\t", header=FALSE))
    labels[,count:=seq(1:561)]
    colnames(labels) <- c("label", "itemnum")

## Prep feature column labels and discover which cols are for mean and std deviations only.
    labels[,isMean:=(grepl("mean", labels$label))]
    labels[,isStd:=(grepl("std", labels$label))]
    labels$isgood<-labels$isMean+labels$isStd
    labels[,doimport:=ifelse((labels$isgood),16,-16)]
    whattoimport <- as.numeric(labels$doimport)
    goodlabels <- subset(labels, isgood==1)

## Import the test File mean/std cols
  testFile <- data.table(read.fwf(file="data/X_test.txt",skip=0, widths=whattoimport, header=FALSE))
  colnames(testFile) <- as.character(goodlabels$label)
      ## Import the test Activity labels
        testActs <- data.table(read.csv(file="data/y_test.txt",skip=0, header=FALSE))
      ## Import the test Subject Labels
        testSubjs <- data.table(read.csv(file="data/subject_test.txt",skip=0, header=FALSE))
      ## attach the activity and subject to test data.
        testFile[,activity_num:=testActs$V1]
        testFile[,subject_num:=testSubjs$V1]

# Import the train File mean/std cols
    trainFile <- data.table(read.fwf(file="data/X_train.txt",skip=0, widths=whattoimport, header=FALSE))
    colnames(trainFile) <- as.character(goodlabels$label)
        ## Import the train Activity labels
        trainActs <- data.table(read.csv(file="data/y_train.txt",skip=0, header=FALSE))
        ## Import the train Subject Labels
        trainSubjs <- data.table(read.csv(file="data/subject_train.txt",skip=0, header=FALSE))
        ## attach the activity and subject to train data.
        trainFile[,activity_num:=trainActs$V1]
        trainFile[,subject_num:=trainSubjs$V1]

# Row Bind the test and train data sets
    fullData <- rbind(testFile, trainFile)
    rm(testFile)  ## drop the import table
    rm(trainFile) ## drop the import table
    rm(trainActs); rm(testActs)  ## drop activities
    rm(trainSubjs); rm(testSubjs)  ## drop subjects

# replace the activity with the proper descriptions.
    activities <- data.table(activity_num = seq(1:6)
                           , activity_name = c("WALKING"
                                               , "WALKING_UPSTAIRS"
                                               , "WALKING_DOWNSTAIRS"
                                               , "SITTING", "STANDING"
                                               , "LAYING"))
# merge in the activity descriptions
    fullData <- (merge(fullData, activities, by = 'activity_num', all = T))

# drop the activity num
    fullData[,activity_num:=NULL]

# reorder cols with subject and activity_name first, then the mean/std cols.
    setcolorder(fullData,c(80,81,1:79))

# Transform the mean/std col names into something less cryptic.
    colnames(fullData) <- gsub("-","",sub("^[0-9]*","",tolower(gsub("\\(\\)","",names(fullData),ignore.case = T))))

# Get the mean and std, for each subject/actvity
    tidyset1 <- data.table(aggregate(fullData, list(fullData$subject_num,fullData$activity_name), FUN="mean"))
    tidyset <- data.frame(copy(tidyset1))

    rm(fullData)

# Given the aggregation, we must now re-label our columns.
    tidyset <- tidyset[,-3]
    tidyset <- tidyset[,-3]
    colnames(tidyset) <- gsub("X\\.", "", names(tidyset))
    colnames(tidyset)[colnames(tidyset) == "Group.1"] <- "subject_number"
    colnames(tidyset)[colnames(tidyset) == "Group.2"] <- "activity_name"

## review.
    # summary(tidyset)
    # head(tidyset,5)

## write.table with data.
    write.table(tidyset, file="tidyset.csv", append=F, sep=",", col.names=T, row.names=F)

