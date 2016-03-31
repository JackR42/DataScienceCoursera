setwd("C:\Users\Administrator\Downloads\DataSciene\Week2")

pollutantmean2 <- function(dir, pollutant, id=1:3, Debug=0) {
  if (Debug == 1) print(dir)
  files <- as.character( list.files(dir) )
  paths <- paste(dir, "/", files, sep="")

  for(i in id) {
    if (Debug == 1) print(paths[i])
    file <- read.csv(paths[i], header=T, sep=",")
    if (Debug == 1) file
    head(file)
    pollutant
    nona<- file[!is.na(file[, pollutant]), pollutant]
    mean_vector <- c(mean_vector, nona)
  }
  result <- mean(mean_vector)
  return(round(result, 3)) 
}

pollutantmean2(paste(getwd(), "/specdata", sep=""), "sulfate", 1:2, Debug=1) 

