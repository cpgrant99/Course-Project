



***
###UCR Study Data###

#####Data sets used in this assignment:#####

- 'features.txt': Names of 561 measurement types collected

- 'X_test.txt' and 'X_train.txt': 2947 test and 7352 train vectors of 561 measurements

- 'y_test.txt' and 'y_train.txt': 2947 test and 7352 train physical activity codes, coded 1-6

- 'subject_test' and 'subject_train': Subjects who perfomed the experiments, coded 1-30

- 'activity_labels.txt': Names of experiment physical activities

***

###Creating the tidy datafile

1. 'Features.txt' (measurement variable labels) becomes column headers for x test and train tables (measurement values)

2. Vertically append x (measurements), y (activity codes), and subject test and train tables

3. Join activity labels table to activity codes table

4. Concatenate x, y and subject tables

5. Filter measurement values for means and standard deviations only

6. Group by activity and subject and take means of grouped values

***

###Tidy Variables

Summarized table contains 180 observations of 69 variables:

-  subject: 1-30; ID of subject performing the activity

-  activity: WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING

-  activity code: values 1-6

- 66 selected standards and means:

tBodyAcc-mean()-X    |       tBodyAcc-mean()-Y   |   tBodyAcc-mean()-Z          
tBodyAcc-std()-X       |     tBodyAcc-std()-Y       |    tBodyAcc-std()-Z           
tGravityAcc-mean()-X    |    tGravityAcc-mean()-Y    |    tGravityAcc-mean()-Z       
tGravityAcc-std()-X   |      tGravityAcc-std()-Y     |    tGravityAcc-std()-Z        
tBodyAccJerk-mean()-X   |    tBodyAccJerk-mean()-Y  |     tBodyAccJerk-mean()-Z      
tBodyAccJerk-std()-X     |   tBodyAccJerk-std()-Y     |   tBodyAccJerk-std()-Z       
tBodyGyro-mean()-X  |tBodyGyro-mean()-Y  |     tBodyGyro-mean()-Z         
tBodyGyro-std()-X     |      tBodyGyro-std()-Y      |     tBodyGyro-std()-Z          
tBodyGyroJerk-mean()-X  |    tBodyGyroJerk-mean()-Y    |  tBodyGyroJerk-mean()-Z     
tBodyGyroJerk-std()-X   |    tBodyGyroJerk-std()-Y   |    tBodyGyroJerk-std()-Z      
tBodyAccMag-mean()     |     tBodyAccMag-std()      |     tGravityAccMag-mean()      
tGravityAccMag-std()    |    tBodyAccJerkMag-mean()    |  tBodyAccJerkMag-std()      
tBodyGyroMag-mean()     |    tBodyGyroMag-std()      |    tBodyGyroJerkMag-mean()    
tBodyGyroJerkMag-std()   |   fBodyAcc-mean()-X      |     fBodyAcc-mean()-Y          
fBodyAcc-mean()-Z     |      fBodyAcc-std()-X       |     fBodyAcc-std()-Y           
fBodyAcc-std()-Z      |      fBodyAccJerk-mean()-X   |    fBodyAccJerk-mean()-Y      
fBodyAccJerk-mean()-Z    |   fBodyAccJerk-std()-X   |     fBodyAccJerk-std()-Y       
fBodyAccJerk-std()-Z    |    fBodyGyro-mean()-X     |     fBodyGyro-mean()-Y         
fBodyGyro-mean()-Z       |   fBodyGyro-std()-X     |      fBodyGyro-std()-Y          
fBodyGyro-std()-Z       |    fBodyAccMag-mean()    |      fBodyAccMag-std()          
fBodyBodyAccJerkMag-mean()|  fBodyBodyAccJerkMag-std()  | fBodyBodyGyroMag-mean()    
fBodyBodyGyroMag-std()  |    fBodyBodyGyroJerkMag-mean()| fBodyBodyGyroJerkMag-std()
