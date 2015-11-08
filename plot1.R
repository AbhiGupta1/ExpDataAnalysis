source('~/load_data.R')

plot1 <- paste(getwd(), "/grafics/plot1.png", sep = "")
if(!file.exists(plot1)){
  png("grafics/plot1.png", width = 480, height = 480)
  hist(cargardates$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
  dev.off()
} else {
  hist(cargardates$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
}
