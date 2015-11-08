##i have downloaded the data set directly from the web and imported that zip file into my current working directory
##hence i have now a feasible solution for the given data set

library(httr) 

archive <- paste(getwd(), "/dates/household_power_consumption.txt", sep = "")
if(!file.exists(archive)){
  unzip(archive, list = FALSE, overwrite = FALSE, exdir = dates)
}

datesresume <- paste(getwd(), "/dates/datesresume.rds", sep = "")
if(!file.exists(datesresume)){
  dates <- "dates/household_power_consumption.txt"
  cargardates <- read.table(dates, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
  cargardates$Time <- strptime(paste(cargardates$Date, cargardates$Time), "%d/%m/%Y %H:%M:%S")
  cargardates$Date <- as.Date(cargardates$Date, "%d/%m/%Y")
  fechas <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  cargardates <- subset(cargardates, Date %in% fechas)
  datesresume <- paste(getwd(), "/", "dates", "/", "datesresume", ".rds", sep="")
  saveRDS(cargardates, datesresume)
} else {
  dates <- "dates/datesresume.rds"
  cargardates <- readRDS(dates)
}
