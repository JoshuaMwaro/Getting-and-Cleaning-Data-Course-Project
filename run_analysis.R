
# Analysis Script

##Step 1.  Loading the necessary libraries

library(dplyr)
library(data.table)

##Step 2. Downloading and unzipping the data
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipfile <- "Week4_project_dataset.zip"
if (!file.exists(zipfile)) download.file(url, zipfile, mode = "wb")

##Step 3. Unzipping the data
if (!file.exists("UCI HAR Dataset")) unzip(zipfile)

##Step 4. Reading the data
Data_path <- "UCI HAR Dataset"

features <- read.table(file.path(Data_path, "features.txt"))
activities <- read.table(file.path(Data_path, "activity_labels.txt"))
subject_train <- read.table(file.path(Data_path, "train", "subject_train.txt"))
x_train <- read.table(file.path(Data_path, "train", "X_train.txt"))
y_train <- read.table(file.path(Data_path, "train", "y_train.txt"))

subject_test <- read.table(file.path(Data_path, "test", "subject_test.txt"))
x_test <- read.table(file.path(Data_path, "test", "X_test.txt"))
y_test <- read.table(file.path(Data_path, "test", "y_test.txt"))

##Step 5. Reading the data

subjects <- rbind(subject_train, subject_test)
xdata <- rbind(x_train, x_test)
ydata <- rbind(y_train, y_test)

colnames(subjects) <- "subject"
colnames(ydata) <- "activity"
colnames(xdata) <- features$V2

Merged_data <- cbind(subjects, ydata, xdata)
View(Merged_data)

# Read column names
colNames <- colnames(Merged_data)

# 5. Extracting mean and std measurements
Mean_std_Data <- Merged_data %>% 
  select(subject, activity, contains("mean"), contains("std"))

View(Mean_std_Data)

# 6. Using descriptive activity names
Mean_std_Data$activity <- factor(Mean_std_Data$activity, 
                         levels = activities$V1, 
                         labels = activities$V2)

# 7. Cleaning variable names
names(Mean_std_Data) <- gsub("\\()", "", names(Mean_std_Data))
names(Mean_std_Data) <- gsub("-mean", "Mean", names(Mean_std_Data))
names(Mean_std_Data) <- gsub("-std", "Std", names(Mean_std_Data))
names(Mean_std_Data) <- gsub("-", "", names(Mean_std_Data))


# 8. Create tidy dataset (average of each variable per subject + activity)
tidydata <- Mean_std_Data %>%
  group_by(subject, activity) %>%
  summarise_all(mean)

# 9. Save output
write.table(tidydata, "tidydata.txt", row.names = FALSE)

tidydata <- read.table( "tidydata.txt")
View(tidydata)


# 10. Make first Row the Header

library(janitor)

tidydata <- tidydata %>% 
  row_to_names(row_number = 1)
View(tidydata)
rm(list = ls())

