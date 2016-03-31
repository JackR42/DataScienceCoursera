# rm(list=ls()) ## Clear memory
# cat("\014")   ## Ctrl-L - Clear screen
# install.packages("reshape2")

library(reshape2)

zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "Dataset.zip"

# Download datafile
if (!file.exists(zipFile)){
  download.file(zipUrl, zipFile)
} else {
  cat("Zip file already exists, skipping download")
}

# Unzip archive
if (!file.exists("UCI HAR Dataset")){
  unzip(zipFile)
} else {
  cat("Data set already exists, skipping unzip")
}

# Load activity_labels.txt
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
activity_labels[,2] <- as.character(activity_labels[,2])

# Load features.txt
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

# Extract only mean and standard deviation
extract <- grep(".*mean.*|.*std.*", features[,2])
extract.names <- features[extract,2]
extract.names = gsub('-mean', 'Mean', extract.names)
extract.names = gsub('-std', 'Std', extract.names)
extract.names <- gsub('[-()]', '', extract.names)

# Load train data
traindata <- read.table("UCI HAR Dataset/train/X_train.txt")[extract]
traindataActivity <- read.table("UCI HAR Dataset/train/Y_train.txt")
traindataSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
traindata <- cbind(traindataSubject, traindataActivity, traindata)

# Load test data
testdata <- read.table("UCI HAR Dataset/test/X_test.txt")[extract]
testdataActivity <- read.table("UCI HAR Dataset/test/Y_test.txt")
testdataSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
testdata <- cbind(testdataSubject, testdataActivity, testdata)

# Combine datasets
combinedData <- rbind(traindata, testdata)
colnames(combinedData) <- c("subject", "activity", extract.names)

# Create factors from activity and subject
combinedData$activity <- factor(combinedData$activity, levels = activity_labels[,1], labels = activity_labels[,2])
combinedData$subject <- as.factor(combinedData$subject)

combinedData.melted <- melt(combinedData, id = c("subject", "activity"))
combinedData.mean <- dcast(combinedData.melted, subject + activity ~ variable, mean)

write.table(combinedData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)

# For testing the output file
# read.table("tidy.txt", header = TRUE)
