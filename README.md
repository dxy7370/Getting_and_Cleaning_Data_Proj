Getting_and_Cleaning_Data_Proj Readme
=====================================

Project scripts for Getting and Cleaning Data course on coursera.org

- Unzip getdata-projectfiles-UCI HAR Dataset.zip
- Make sure that it is unzipped as a directory named "UCI HAR Dataset"
- Place the script run_analysis.R to the same directory where "UCI HAR Dataset"
(not inside "UCI HAR Dataset", but in the same root directory)
- Start R
- Navigate to the directory where you have both "UCI HAR Dataset" and run_analysis.R
- Run the script by the following command: source("run_analysis.R")
- Two files are created: merged_data.csv and tidy_data.csv
- merged_data.csv contains detailed merged and processed data from train and test
- tidy_data.csv contains the average of each variable for each activity and each subject
from the merged data.
