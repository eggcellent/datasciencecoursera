##Finds the mean of a pollutant from specified monitors
pollutantmean <- function(directory, pollutant, id = 1:332) {
    A2files <- list.files(directory, full.name=TRUE) ##target files
    alldat <- data.frame()  ##Create data frame for all data
    for (i in id) {
        alldat <- rbind(alldat, read.csv(A2files[i]))  ##bind files
    }
    ##find mean of pollutant from id subset
    if (pollutant == "sulfate") { 
        return(mean(alldat$sulfate, na.rm = TRUE)) 
    }
    else 
        return(mean(alldat$nitrate, na.rm = TRUE))
}