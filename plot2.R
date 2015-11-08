source('~/load_data.R')
plot2 <- paste(getwd(), "/grafics/plot2.png", sep = "")
if(!file.exists(plot2)){
  png("grafics/plot2.png", width = 480, height = 480)
  plot(cargardates$Time, cargardates$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  dev.off()
} else {
  plot(cargardates$Time, cargardates$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
}
