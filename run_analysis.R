

# define working directory source data variables - depending on the folder where the 
#raw data is added this may need to be change
setwd("~/GitHub/Getting-and-Cleaning-Data");
datadir<-"raw data";

# extend the test and train directories
testdir<-paste(datadir, "test", sep="/");
traindir<-paste(datadir, "train", sep="/");
resultdir<-"result sets";

# ensure data.table is available
library(data.table);

# load measurement labels and remove non mean|std labels - required for both train and test sets 
features<-read.table(paste(datadir, "features.txt", sep="/"), sep="",strip.white=TRUE);
feature_cols<-grepl("mean()|std()",as.character(features$V2))
feature_labels<-as.character(features$V2)[feature_cols]


# begin work on test set
## get activity in to a data.table object
test.activity<-data.table(read.table(paste(testdir, "Y_test.txt", sep="/"), sep="",strip.white=TRUE));
setnames(test.activity,colnames(test.activity),"ActivityID")


## get subject in to a data.table object
test.subject<-data.table(read.table(paste(testdir, "subject_test.txt", sep="/"), sep="",strip.white=TRUE));
setnames(test.subject,colnames(test.subject),"SubjectNumber")


## bind subject and activity
test.set<-cbind(test.subject,test.activity)


## load x_test data into data.table,strip unused columns, rename columns, and key for joining
test.value<-data.table(read.table(paste(testdir, "X_test.txt", sep="/"), sep="",strip.white=TRUE));
test.value<-test.value[,feature_cols,with=FALSE];
setnames(test.value,colnames(test.value),feature_labels)


## column bind values to existing test set
test.set<-cbind(test.set,test.value)


# begin work on train set
## get activity in to a data.table object
train.activity<-data.table(read.table(paste(traindir, "Y_train.txt", sep="/"), sep="",strip.white=TRUE));
setnames(train.activity,colnames(train.activity),"ActivityID")


## get subject in to a data.table object
train.subject<-data.table(read.table(paste(traindir, "subject_train.txt", sep="/"), sep="",strip.white=TRUE));
setnames(train.subject,colnames(train.subject),"SubjectNumber")


## bind subject and activity
train.set<-cbind(train.subject,train.activity)


## load x_train data into data.table,strip unused columns, rename columns, and key for joining
train.value<-data.table(read.table(paste(traindir, "X_train.txt", sep="/"), sep="",strip.white=TRUE));
train.value<-train.value[,feature_cols,with=FALSE];
setnames(train.value,colnames(train.value),feature_labels)


## column bind values to existing train set
train.set<-cbind(train.set,train.value)


# row bind train.set and test.set then key activity
tidy.set<-rbind(train.set,test.set)
setkey(tidy.set,ActivityID)


# get the activity names | labels and key activity
activity<-data.table(read.table(paste(datadir, "activity_labels.txt", sep="/"), sep="",strip.white=TRUE))
setnames(activity,colnames(activity),c("ActivityID","ActivityName"))
setkey(activity,ActivityID)


# merge the tidy set with activity names
tidy.set<-merge(tidy.set,activity)
tidy.set<-tidy.set[,c(ncol(tidy.set),2:(ncol(tidy.set)-1)),with=FALSE]


# write the tidy.set to the output directory
write.table(tidy.set, file = paste(resultdir, "tidy_data_set.txt", sep="/"))

# write the agg.set to the output directory
agg.set<-tidy.set[,lapply(.SD,mean),by=c("ActivityName","SubjectNumber")]
write.table(agg.set, file = paste(resultdir, "aggregate_data_set.txt", sep="/"))


