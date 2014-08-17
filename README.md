getdata-006
===========

Getting and Cleaning Data, Course Project, Coursera Project: getdata-006
Author: IncredibleMouse
Date: 08/17/2014

### About
This project cleans and organizes a data set comprised of measurements 
captured by subjects performing various activities while wearing a smartphone, 
The original data was culled by extracting just the mean and standard 
deviation variables, and for each subject and activity performed, a mean
was aggregated - for both the training data set and the test data set.

### Original Data Set
The original data set can be obtained from: 
[Original Data Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
The original data description can be viewed at the UCI Machine Learning Repository
[Original Data Description - UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### More Information
For more information about this cleaned data set
[[This GitHub Repository](https://github.com/IncredibleMouse/getdata-006)

### Run the Analysis (Cleaning of Data)
To run this analysis, be sure you have the /data folder and its contents,
also available at the above listed github repository.

### The Result: tidyset.csv
The resulting cleaned and aggregated data set produced: tidyset.csv
The data consists of a subject_number, an activity_name, and the mean 
of the available measurements (for mean and std. deviation values only)
