dat <- data.frame()
for (i in 1:5) {
    dat <- rbind(dat, read.csv(files_full[i]))
}
str(dat)

dat_30 <- dat[which(dat[,"Day"]==30),]
dat_30
median(dat_30$Weight)

##inside dat loop
for (i in 1:5) {
    dat2 <- data.frame()
    dat2 <- rbind(dat2, read.csv(files_full[i]))
}
str(dat2)
head(dat2)

##median weight on a given day
weightmedian <- function(directory,day) {
    files_list <- list.files(directory,full.names=TRUE)
    dat <- data.frame()
    for (i in 1:5) {
        dat <- rbind(dat, read.csv(files_list[i]))
    }
    dat_subset <- dat[which(dat[,"Day"]==day),]
    median(dat_subset[,"Weight"], na.rm=TRUE)
}