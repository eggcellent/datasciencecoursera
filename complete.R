##returns number of complete records for an id
complete <- function(directory, id = 1:332) {
    files <- list.files(directory, full.name = TRUE) 
    datas <- data.frame()  ##creates frame for output
    sumi <- c()  ##creates vector for target sums
    for (i in (1:length(id))) {
        dati <- read.csv(files[id[i]])
        sumi[i] <- sum(complete.cases(dati)) ##finds complete cases and sums
    }
    datas <- data.frame(id=id, nobs=sumi)  ##creates data frame from vectors and headers
    datas
}