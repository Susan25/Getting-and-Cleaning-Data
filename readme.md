##Getting and Cleaning Data

###[1] The Repository Overview
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

###[2] The Contents
This repository maintains the primary components of tidy data set used for analytics with respect to above stated overview.  Collectively, the below sub-sections represents a comprehensive view for reproducing and understanding the content as a whole.

####[2.1] The Instruction List
In order to ensure reproducable results, each of the below ordered steps must be conducted.

1. Move raw data (found below) into your working directory under a directory called 'raw data'.
2. Move `run_analysis.R` into your working directory. The algorithm for this script is below.
  1. Define raw data and result set locations.
  2. Load headers from features.txt.
  3. Remove headers that are not are not 'mean' or 'standard deviation'.
  4. Load variable data from both X and Y data into a `data.table`, for both 'train' and 'test'.
  5. `cbind' the X and Y `data.table`.
  6. `rbind` the training and test sets for into a single set.
  7. Apply headers.
  8. Load activity labels from activity_labels.txt and `merge` labels to tidy data set.
  9. Write tidy_data_set.txt to defined directory.
  10. Aggregate tidy data set with mean function accross all measurement variables and write to defined defined directory.
3. Run the R script in full.
4. Review the contents of a new (or existing) directory called 'result sets'; you will find two newly created files.

####[2.2] Code Book
The Code Book, found [here](https://github.com/mjfii/Getting-and-Cleaning-Data/blob/master/codebook.md), contains infomation regarding each of the variables and observations.  It also include information each measurement, data type, and units, as well as aggregations and consolidations.

####[2.3] Result Sets
There are two result sets generated when executing the Instruction List, both of which have been cleaned per the [specifications](https://github.com/mjfii/Getting-and-Cleaning-Data/blob/master/assignment.md).  They are as follows:

1. [tidy_data_set.txt]: Contains a complete set of the means and standard deviations by subject and activity. 
2. [aggregrate_data_set.txt]: Contains an aggregated set of the means and standard deviations by subject and activity

If placed in your working directory, the result sets can be consumed via R with the below code script.

```R
# load the result sets from the working directory
rs<-read.table(paste("result sets","tidy_data_set.txt",sep="/"))
as<-read.table(paste("result sets","aggregate_data_set.txt",sep="/"))
```

####[2.4] Raw Data Sources
The raw data used for in this exercise was initally found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  That data was extracted and uploaded to this repository under the folder 'raw data'; you can get there through this [link](https://github.com/mjfii/Getting-and-Cleaning-Data/tree/master/raw%20data).  Please note the 'readme.txt' file presented within the contents of the 'raw data' directory.

####[2.5] Version Information
- R Studio Version 0.98.953
- R version 3.1.1 (2014-07-10)
- Platform x86_64-w64-mingw32/x64 (64-bit)

