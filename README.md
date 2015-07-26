##Getting and Cleaning Data Course Project

####Assignment goal

The purpose of this project is to combine multiple data sets in a logical way, subset the data, and produce a table appropriately labeled and organized.

My approach for the project was to create a "master" table with all data included then subset per the assignment parameters.

####Process
1. The dplyr package contains tools for easier manipulation of data frames.

2. Column label names are assigned at the time files are read in. 'features' is read in first so that the table's second column can be assigned as column names for the 'x' data sets. R automatically converts '()-' characters in 'features.txt' to '...' but no information is lost because of the conversion.
3.Test and train measurement data sets are combined vertically (row-by-row). Resulting table has 561 columns and 10299 rows of measurement data.

4.Test and train activities data sets are combined vertically and merged with labels table. A join was chosen because it preserves the original order of the activities data. Resulting table has 10299 activity code and description rows corresponding to measurement data.

5.Subject test and train data is combined vertically, resulting in a 10299-item list of subject codes corresponding to measurement data and activities.  

6. Create index vector to select for standard deviations and means. Regular expression does not select occurrences of 'gravityMean' or 'meanFreq.'

7. Concatenate all tables, simultaneously subsetting measurements table to include mean and standard deviation values only. Resulting table has 69 variables: 66 measurement standard deviations and means; subject; activities; and activity_code.

8. Create tidy table by grouping and summarizing activity and subject variables. Resulting table has 69 columns and 180 rows: means of means and standard deviations of measurement data for six activities for each of 30 subjects.
