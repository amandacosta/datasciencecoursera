weightmedian <- function (directory, day){
        ##creating a list files
        file_list<- list.files (directory, full.names = TRUE)
        
        ##creates an empty data.frame
        all_df <- data.frame()
        
        ##rbind all files
        for (i in 1:5){
                all_df <- rbind(all_df, read.csv(file_list[i]))
        }
        
        #define day
        dsub <- all_df[all_df[, "Day"] == day, ]
        
        #calculate the median of the subset with complete cases
        median(dsub$Weight, na.rm = TRUE)
}