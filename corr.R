##finds correlation between pollutants for each monitor, provided monitor is above threshold of complete cases

corr <- function(directory, threshold = 0) {
    files <- list.files(directory, full.name = TRUE) 
    corrdat <- c()
    corrvec <- c()
    for (i in 1:332) {
        dati <- read.csv(files[i])
        good <- complete.cases(dati) ##creates logicals of complete cases
        sumi <- sum(good)
        if (sumi > threshold) {  ##if number of complete cases exceeds threshold, find corr
            datcc <- dati[good,]  ##creates dataframe of records with complete cases
            svec <- datcc[2]  ##sulfate vector
            nvec <- datcc[3]  ##nitrate vector
            corrvec <- cor(svec, nvec)
            corrdat <- c(corrdat, corrvec)
        }
    }
    corrdat
}

