
######### getting and cleaning data########################################
#  time:20170903
#  author:sophieyucan
#  note: < getting and cleaning data> week 4 Course Project
##########################################################################！#

### prepair and download file############################################！#
library(dplyr)
library(reshape2)

rm(list = ls())
getwd()
#set work directory
# setwd("C:\\Users\\yucan\\Documents\\R test\\data science\\getting and cleanning data\\data")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
               destfile = "c3_project_dataset.zip",mode = "wb")
unzip("c3_project_dataset.zip")
# list.files()

### 1. merge test set and train set  #################################################！#
df_subject_test <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")
df_x_test <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt")
df_y_test <- read.table(".\\UCI HAR Dataset\\test\\Y_test.txt")
df_subject_train <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")
df_x_train <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt")
df_y_train <- read.table(".\\UCI HAR Dataset\\train\\Y_train.txt")

# combine file by colunm :subject,y,x
df_test <- cbind(df_subject_test,df_y_test,df_x_test)
df_train <- cbind(df_subject_train,df_y_train,df_x_train)
rm(df_subject_test,df_y_test,df_x_test,df_subject_train,df_y_train,df_x_train)

#combine test set and train set by row
df <- rbind(df_test,df_train)
rm(df_test,df_train)

### 2. extract mean and std ##########################################################！#
# get names from features.txt
df_xcolnames <-  read.table(".\\UCI HAR Dataset\\features.txt")
xcolnames<-as.character(df_xcolnames[,2])
xcolpos<- grep("mean\\(\\)|std\\(\\)",xcolnames)

#Extracts mean and standard deviation  
df <- df[,c(1,2,xcolpos+2)]

### 3. rename column names ###########################################################！#
# remove sign "-," in names
xtractnames <- xcolnames[xcolpos]
xtractnames <- gsub("[-,()]","",xtractnames)

# rename  data set's column names 
names(df) <- c("subject","activityno",xtractnames)
rm(df_xcolnames,xcolnames,xcolpos,xtractnames)

### 4.get activity namesget activity names############################################！#
#get activity label from file activity_labels.txt
df_actlabels <-  read.table(".\\UCI HAR Dataset\\activity_labels.txt")
names(df_actlabels) <-c("activityno","activitylabel")
#merge file by activityno
result_df <- merge(df_actlabels,df,by.x = "activityno",by.y = "activityno",all = TRUE)
#remove activity no
result_df <- result_df[,c(-1)]
rm(df_actlabels,df)

### 5.create data set contails:subject,activitylabel,mean of other variables########！#
melt_df <- melt(result_df,
                id.vars = c("subject","activitylabel"),
                measure.vars = c(-(1:2)))
tidy_data <- dcast(melt_df, subject + activitylabel ~ variable, mean)

write.table(tidy_data,"tidy_subject_activity_variable_mean.txt",row.names = FALSE)
rm(result_df,melt_df,tidy_data)

# test
# tidy_df <- read.table("tidy_subject_activity_variable_mean.txt",header = TRUE)
