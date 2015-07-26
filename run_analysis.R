
run_analysis<-function(){

library(dplyr)

##read files
activity_labels <- read.table("activity_labels.txt",col.names=c("activity_code","activity"))
features <- read.table("features.txt")
subject_test <- read.table("subject_test.txt",col.names="subject")
subject_train <- read.table("subject_train.txt",col.names="subject")
x_test <- read.table("x_test.txt",col.names=features$V2)
x_train <- read.table("x_train.txt",col.names=features$V2)
y_test<- read.table("y_test.txt",col.names="activity_code")
y_train <- read.table("y_train.txt",col.names="activity_code")
  
##combine test and train observations
x_all<-rbind(x_test,x_train)

##combine test and train activities and merge with labels table
y_all<-rbind(y_test,y_train)
activities<-left_join(y_all,activity_labels)

#combine subject test and train dfs 
subjects<-rbind(subject_test,subject_train)

##create index vector of variable names with "std" and "mean"
std_mn<-grep(("std|mean\\b"),features$V2)

##merge all tables into one
combined_data<-cbind(x_all[,std_mn],subjects,activities)

##create tidy table by grouping and summarizing activity & subject variables
tidy_df<-combined_data%>%group_by(activity,subject)%>%summarise_each(funs(mean))

View(tidy_df)
}
  



