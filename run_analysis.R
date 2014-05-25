analyzeUciHarDataset <- function(directory, nrows=-1) {

  # get features
  #
  filename = paste(directory, "features.txt", sep = "/")
  d_features <- read.table(file=filename,colClasses=c("numeric","character"),
    col.names=c("ID", "Name"))
  d_features <- as.data.frame(d_features)

  # get activity_labels
  #
  filename = paste(directory, "activity_labels.txt", sep = "/")
  d_activity_labels <- read.table(file=filename,colClasses=c("numeric","character"),
    col.names=c("ID", "Name"))
  d_activity_labels <- as.data.frame(d_activity_labels)

  # get X for test and train, join them together into DF dat
  #
  filename = paste(directory, "test/X_test.txt", sep = "/")
  dat <- read.table(file=filename, nrows=nrows, col.names=d_features$Name)
  dat <- as.data.frame(dat)
  #
  filename = paste(directory, "train/X_train.txt", sep = "/")
  temp <- read.table(file=filename, nrows=nrows, col.names=d_features$Name)
  temp <- as.data.frame(temp)
  #
  dat <- rbind(dat, temp)

  # reduce features to mean and std only
  #
  temp <- c()
  #
  for(i in seq_along(d_features[,1])) {
    name <- d_features[i,2]

    if(grepl("mean\\(\\)", name) || grepl("std\\(\\)", name)) {
      temp <- c(temp, i)
    }
  }
  #
  d_features <- d_features[temp,]

  # reduce dat to mean and std only
  #
  dat <- dat[,d_features$ID]
  colnames(dat) = d_features$Name

  # get activity data for test and train, append them to DF dat
  #
  filename = paste(directory, "test/y_test.txt", sep = "/")
  activity <- read.table(file=filename, nrows=nrows, col.names=c("activity"))
  activity <- as.data.frame(activity)
  #
  filename = paste(directory, "train/y_train.txt", sep = "/")
  temp <- read.table(file=filename, nrows=nrows, col.names=c("activity"))
  temp <- as.data.frame(temp)
  #
  activity <- rbind(activity, temp)
  dat <- cbind(activity, dat)

  # get subject data for test and train, append them to DF dat
  #
  filename = paste(directory, "test/subject_test.txt", sep = "/")
  subject <- read.table(file=filename, nrows=nrows, col.names=c("subject"))
  subject <- as.data.frame(subject)
  #
  filename = paste(directory, "train/subject_train.txt", sep = "/")
  temp <- read.table(file=filename, nrows=nrows, col.names=c("subject"))
  temp <- as.data.frame(temp)
  #
  subject <- rbind(subject, temp)
  dat <- cbind(subject, dat)

  # use descriptive names and label data set
  #
  dat$subject <- factor(x=dat$subject)
  dat$activity <- factor(x=dat$activity)
  levels(dat$activity) <- d_activity_labels$Name

  # QA, order by subject and activity
  #
  stopifnot(sum(sapply(dat, function(x) sum(is.na(x)))) == 0)
  dat <- dat[order(dat$subject, dat$activity),]

  # create a tidy data set with the average of each variable
  # for each activity and each subject
  #
  stats_nrow = length(levels(dat$activity))*length(levels(dat$subject))
  stats_ncol = length(d_features$Name) + 2
  stats_dimnames = list(NULL, c(c("subject", "activity"), d_features$Name))
  stats <- as.data.frame(matrix(nrow=stats_nrow, ncol=stats_ncol,
    dimnames=stats_dimnames))
  stats_sa = 0
  #
  for(f in d_features$Name) {
    stat <- tapply(dat[,f], dat[,c("subject", "activity")], mean)
    stat_v <- c()

    if(stats_sa == 0) {
      stat_s <- c()
      stat_a <- c()

      for(activity in colnames(stat)) {
        stat_s <- c(stat_s, rownames(stat))
        stat_a <- c(stat_a, rep(activity, length(rownames(stat))))
      }

      stats$subject <- factor(x=stat_s)
      stats$activity <- factor(x=stat_a, levels=d_activity_labels$Name)

      stats_sa = 1
    }

    for(activity in colnames(stat)) {
      stat_v <- c(stat_v, stat[,activity])
    }

    stats[,f] <- stat_v
  }

  # QA, order by subject and activity
  #
  stopifnot(sum(sapply(stats, function(x) sum(is.na(x)))) == 0)
  stats <- stats[order(stats$subject, stats$activity),]

  # write data
  #
  print("merged_data: "); str(dat)
  print("tidy_data: "); str(stats)
  write.csv(dat, file = "merged_data.csv", row.names=FALSE)
  write.csv(stats, file = "tidy_data.csv", row.names=FALSE)
}

analyzeUciHarDataset(directory="UCI HAR Dataset", nrows=-1)
