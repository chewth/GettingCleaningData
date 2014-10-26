GetCleanDataProject
===================

Function run_analysis.R steps
=========

Step 1:
  1. The first step retrieves the column names for the variables from features.txt and create a vector of column names.
  2. Then we read in the original test data set for subject, X and Y and column bind them with cbind.
  3. We assign the vector of column names to the test data set.
  4. Repeat steps 2 and 3 for the train data set.
  5. Combine both the training and testing data set together

Step 2:
  6. The second step grabs all the columns from the data set that is referring to the mean and   standard deviation. 
  7. The data set from Step 1 is filtered to only contain the Subject, Activity and mean and sd of the respective sensors.

Step 3:
  8. Read the activity labels and add to the data set.
  9. The activity labels are also converted to factors.

Step 4.
  10. Label the data set with descriptive variable names by replacing the special characters.

Step 5. 
  11. Copy out the original column names because we will be renaming the column names in the new data set we are going to create.
  12. Use the melt and cast to retrieve the mean of each variable by subject and activity and assign it to a new data frame.
  13. Concatenate a "avg" to the column names of the new data frame that consists of the aggregated mean.
  14. Write the output to a text file.