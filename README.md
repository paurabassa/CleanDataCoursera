Script to read and tidy up the "Human Activity Recognition Using Smartphones 
Dataset" available at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The script is dessigned to be run on the directory "UCI HAR Dataset" obtained
after unzipping the file available at
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip

Only the measurements on the mean and standard deviation for each 
original measurements are keept and stored locally at the data.frame "cleaned". 
The first two variables of the data.frame correspond to the subject 
Id and the Activity, whereas the rest correspond to the keept mesuraments 
of the dataset. 

From "cleaned" data.frame  a second data frame is created with the average 
of the keept mesuraments by subject Id and activity. The file is saved to 
"clean-data.txt". 

Fore more details about each of the variables look at the code.book.

