##BROKEN FIX LATER
pollutantmean <- function(directory, pollutant, id=1:332) {
    A2files <- list.files(directory, full.names=TRUE)  ##find target files
    alldat <- data.frame()                              ##create empty frame to combine data
    for (i in id) {                                     ##run loop through all files
        alldat <- rbind(alldat, read.csv(A2files[i]))     ##bind all data
    }
}

##OKAY
pollutantmean <- function(directory, pollutant, id = 1:332) {
    A2files <- list.files(directory, full.name=TRUE) ##target files
    alldat <- data.frame()  ##Create data frame for all data
    for (i in id) {
        alldat <- rbind(alldat, read.csv(A2files[i]))  ##bind files
    }
    ##find mean of pollutant from id subset
    if (pollutant == "sulfate") { 
        mean(alldat$sulfate, na.rm = TRUE) 
    }
    else 
        mean(alldat$nitrate, na.rm = TRUE)
}