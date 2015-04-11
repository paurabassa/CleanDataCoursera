features <- read.table("./features.txt")
# reads a file with the 561 different features in the data and 
# its corresponding integer identifier 

activity_labels <- read.table("./activity_labels.txt")
# reads a file with the 6 different activities associated to each label


## -----------------------------
##        read train data 
## -----------------------------


train_set      <- read.table("./train/X_train.txt")       # reads training set
train_subject  <- read.table("./train/subject_train.txt") #reads subjects identifiers 
train_labels   <- read.table("./train/y_train.txt")       #reads train activity labels

names(train_set)      <- as.character(features[,2])    #adds explanatory variables names
names(train_subject)  <- "Subject_ID"

train_activity <- data.frame(Activity = sapply(train_labels[[1]],
                                     function(i){ activity_labels[i,2]})) 
#replaces integer activity labels by explanatory activity labels


mean_vars <- names(train_set)[grep("mean\\(",names(train_set))]
std_vars <- names(train_set)[grep("std\\(",names(train_set))]

train_final <- cbind(train_subject,train_activity, train_set[c(mean_vars,std_vars)]) 
#subsets the variables corresponding to mean and standard deviation and merges to subject and activity

rm(train_set); rm(train_subject); rm(train_labels); 
rm(train_activity); 
rm(mean_vars); rm(std_vars);
#removes all unnecessary files 

## -----------------------------
##       read test data 
## -----------------------------


test_set      <- read.table("./test/X_test.txt")       # reads testing set
test_subject  <- read.table("./test/subject_test.txt") #reads subjects identifiers 
test_labels   <- read.table("./test/y_test.txt")       #reads test activity labels

names(test_set)      <- as.character(features[,2])    #adds explanatory variables names
names(test_subject)  <- "Subject_ID"

test_activity <- data.frame(Activity = sapply(test_labels[[1]],
                                     function(i){ activity_labels[i,2]})) 
#replaces integer activity labels by explanatory activity labels


mean_vars <- names(test_set)[grep("mean\\(",names(test_set))]
std_vars <- names(test_set)[grep("std\\(",names(test_set))]

test_final <- cbind(test_subject,test_activity, test_set[c(mean_vars,std_vars)]) 
#subsets the variables corresponding to mean and standard deviation and merges to subject and activity

rm(test_set); rm(test_subject); rm(test_labels); 
rm(test_activity); 
rm(mean_vars); rm(std_vars);
#removes all unnecessary files 


## -------------------------------------------------
##   merge test and train data for the final dataset
## -------------------------------------------------

cleaned <- rbind(train_final,test_final)
cleaned$Subject_ID <- as.factor(cleaned$Subject_ID)
rm(activity_labels,features, train_final, test_final)

means.cleaned <- aggregate(cleaned[,-(1:2)], by=list(ID=cleaned$Subject_ID,Activity=cleaned$Activity),FUN=mean)
write.table(cleaned,file="clean-data.txt",quote=F)

