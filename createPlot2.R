createPlot2 <- function() {
  #load in file
  data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings=c("?",""))
  #extract feb 1st and 2nd
  data <- data[(data$Date=="1/2/2007"|data$Date=="2/2/2007"),]
  #open png device
  png(filename="plot2.png", width=480, height=480)
  #create time label
  time <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')
  #create plot
  plot(x=time, y=data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
  #close png device
  dev.off()
}