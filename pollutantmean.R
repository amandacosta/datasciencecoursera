pollutantmean <- function(directory, pollutant, id = 1:332) {
        
        # list the files in the directory
        fileList <- list.files(directory)
        
        # extract the file names from the files
        fileNames <- as.numeric(sub("\\.csv$", "", fileList))
        
        # filter the file names based on the range
        filteredFiles <- fileList[match(id, fileNames)]
        
        # selecting the file paths based in the range
        selectedFiles <- file.path(directory, filteredFiles)
        
        # read as a csv all the selected files
        rawData <- lapply(selectedFiles, read.csv)
        
        # for(i in id){
        
        #}
        
        # convert the raw data into a data frame
        dataFrame <- do.call(rbind.data.frame, rawData)
        
        # calculate the mean
        round(mean(dataFrame[,pollutant], na.rm = TRUE), digits = 3)     
}


