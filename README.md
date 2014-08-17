getdata-006
===========

Getting and Cleaning Data, Course Project, Coursera Project: getdata-006  
Author: IncredibleMouse  
Date: 08/17/2014  

### About
This project cleans and organizes a data set comprised of measurements captured by subjects performing various activities while wearing a smartphone. The original data, combining both the test and training data sets, was culled by extracting just the mean and standard deviation variables, and for each subject and activity performed, a mean was aggregated.

### Original Data Set
The original data set can be obtained from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  
The original data description can be found at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Run the Analysis
Steps to transform the raw data into tidy data: 
1. Be sure you have the /data folder and its contents, also available in this github repository.
1. Run the run_analysis.R source to produce the tidyset.csv

### The Result: tidyset.csv
* The result of run_analysis.R produces a cleaned and aggregated data set: tidyset.csv  
* The data consists of a subject_number, an activity_name, and the mean of the available measurements (for mean and std. deviation values only).

### The Codebook
For more information about the variables in the resulting cleaned data set, please view the codebook.md
