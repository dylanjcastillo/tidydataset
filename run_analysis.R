#run_analysis.R
#This script was designed to download, extract, tidy up and summarize part of 
#the "Human Activity Recognition Using Smartphones Dataset Version 1.0" made 
#by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio and Luca Oneto. 

#Check if .zip already exists and if it doesn't, download it
if (!file.exists("./getdata-projectfiles-UCI HAR Dataset.zip")) {
    if (library(downloader, logical.return=TRUE)==FALSE) {
        install.packages("downloader")
    }
    library(downloader)
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download(fileUrl, destfile="./getdata-projectfiles-UCI HAR Dataset.zip", mode="wb")
}

#Read the data from "dataset.zip" and create different data frames from it
unzip("./getdata-projectfiles-UCI HAR Dataset.zip", exdir="./data/SamsungGalaxy")
featuresRead <- read.table("./UCI HAR Dataset/features.txt", header=FALSE, sep=" ", stringsAsFactors=FALSE)
featuresRead <- featuresRead[, 2]
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE, check.names=FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE, check.names=FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)
activityLabels <- activityLabels[, 2]

#Create one dataframe with all the relevant data
testFile <- data.frame(subject_test, y_test, x_test)
trainFile <- data.frame(subject_train, y_train, x_train)
defFile <- rbind(testFile, trainFile)

#Add appropiate names for variables in header
colnames(defFile) <- c("SubjectID", "Activity", featuresRead)

#Subset dataframe to include only mean and std variables 
matches <- append(grep("mean()", featuresRead, fixed=TRUE), grep("std()", featuresRead, fixed=TRUE))
matches <- sort(matches)
reducFile <- defFile[, c(1, 2, matches+2)]

#Replace activity id numbers with the appropiate labels
for (i in 1:6) {
    if (i==1) {
        labelRep<- reducFile[, 2]
    }
    labelRep <- gsub(i, labelRep, replacement=activityLabels[i], fixed=TRUE) 
}

#Order data according to: 1. SubjectID and 2. Activity
reducFile[, 2] <- labelRep
reducFile <- reducFile[order(reducFile$SubjectID, reducFile$Activity), ]

#Create output table "tidyData" and give header a more legible format
tidyData <- data.frame(matrix(ncol=ncol(reducFile), nrow=180))
colnames(tidyData) <- colnames(reducFile)
colnames(tidyData) <- gsub("-", colnames(tidyData), replacement=".", fixed=TRUE)
colnames(tidyData) <- gsub("mean()", colnames(tidyData), replacement="MEAN", fixed=TRUE)
colnames(tidyData) <- gsub("std()", colnames(tidyData), replacement="STDEV", fixed=TRUE)

#Calculate mean for each subject and activity and write to tidyData
ubic <- 1
for (i in 1:30) { 
    for (j in activityLabels) {
        vectMean <- reducFile[(reducFile$SubjectID==i & reducFile$Activity==j), ]
        tidyData[ubic, ] <- c(i, j, sapply(vectMean[, 3:68], mean))
        ubic <- ubic + 1
    }
}

write.table(tidyData, file="tidydataset.txt")