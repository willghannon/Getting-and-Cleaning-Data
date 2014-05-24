Getting and Cleaning Data Course Project (May 23, 2014)
========================================
This is a how run_analysis.R script works.
* The function assumes that there is a folder in the working directory titled "UCI HAR Dataset" which can be done by unzipping the file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip to the desired working directory.
* Verify that the folder "UCI HAR Dataset" and the run_analysis.R script are both in the current working directory.
* Use source("run_analysis.R") command in RStudio.
* Perform the function commands by entering run_analysis() into the command line.
* Two output files are generated and saved to the current working directory:
  - MergedData.csv (7.9 Mb) contains a data frame called 'df' with 10299 observations of 68 variables.
  - TidyDataSubmission.csv (220 Kb): it contains a data frame called dfCast with 180 observations of 68 variables.
* To view the datasets, read the .csv files into R with the following commands: 
 - read.csv("MergedData.csv") for the merged dataset with each individual measurement of each variable.
 - read.csv("TidyDataSubmission.csv") for the melted and cast dataset identifying the mean of each variable for each activity relative to the subject.
* For explanations on variables and the structure of the datasets, read Codebook.md in this repo.

Will Hannon