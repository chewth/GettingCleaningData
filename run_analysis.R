library(reshape2)

#Step 1
features <- read.table("data/UCI HAR Dataset/features.txt")
cnames <- c("Subject", "Activity", as.character(features[,2]))

test.set <- read.table("data/UCI HAR Dataset/test/X_test.txt")
test.labels <- read.table("data/UCI HAR Dataset/test/y_test.txt")
test.subjects <- read.table("data/UCI HAR Dataset/test/subject_test.txt")

# Merge labels and subject columns into the test data set
test.set <- cbind(test.subjects, test.labels, test.set)

# Name the columns of the test data set
colnames(test.set) <- cnames


# Read in the train data
train.set <- read.table("data/UCI HAR Dataset/train/X_train.txt")
train.labels <- read.table("data/UCI HAR Dataset/train/y_train.txt")
train.subjects <- read.table("data/UCI HAR Dataset/train/subject_train.txt")

# Merge labels and subject columns into the train data set
train.set <- cbind(train.subjects, train.labels, train.set)

# Name the columns of the train data set
names(train.set) <- cnames


# Combine the test and train data sets into a single data frame
data.set <- rbind(test.set, train.set)

#Step 2

# Select only the features with mean() and std() in the name
mean.meas <- grep("(mean|std)\\(\\)", colnames(data.set), value = TRUE)

# Subset the merged data set to select only these features
data.ext <- data.set[, c("Subject", "Activity", mean.meas)]


#Step 3

# Read in the activity labels
activity.labels <- read.table("data/UCI HAR Dataset/activity_labels.txt")
colnames(activity.labels) <- c("activity", "label")

# Make the activity column a factor and recode the levels
recode <- activity.labels$activity
names(recode) <- activity.labels$label

data.ext$Activity <- factor(data.ext$Activity, levels = recode, labels = names(recode))


#Step 4

colnames(data.ext) <- gsub("\\(\\)", "", tolower(colnames(data.ext)))
colnames(data.ext) <- gsub("-", ".", colnames(data.ext))


#Step 5

# Collect the column names for future use
colids <- colnames(data.ext)[1:2]
colvars <- colnames(data.ext)[3:length(colnames(data.ext))]

# Reshape the data and take the mean of each variable by subject and activity
data.melt <- melt(data.ext, id=colids, measure.vars=colvars)
data.cast <- dcast(data.melt, subject + activity ~ variable, mean)

# Add 'avg' to the variable name to differentiate the data in the new data set.
colnames(data.cast) <- c(colids, gsub("(.*)", "avg.\\1", colvars))

#Write to file.
write.table(data.ext, file = "output/tidy.txt", row.names = FALSE, quote = FALSE)
write.table(data.cast, file = "output/tidy-avg.txt", row.names = FALSE, quote = FALSE)