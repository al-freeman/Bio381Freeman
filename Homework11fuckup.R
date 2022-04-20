file_folder <- "Photosynthesis/"
file_out <- "StatsSummary.csv"
file_names <- list.files(path = file_folder)
##########################################################



#Batch Processing Step



# batch process by looping through individual files
for(i in seq_along(file_names)){
  data <- read.table(file = paste(file_folder,file_names[i],sep = ""),
                     sep=",", 
                     header = TRUE,
                     stringsAsFactors = FALSE)
  
  write.table(x=data,
              file=file_out,
              row.names=FALSE,
              col.names=FALSE,
              sep=",",
              append=TRUE,
              quote=FALSE)
}



print(stats_out)

