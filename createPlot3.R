createPlot3 <- function() {
  #load in file
  data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings=c("?",""))
  #extract feb 1st and 2nd
  data <- data[(data$Date=="1/2/2007"|data$Date=="2/2/2007"),]
  #open png device
  png(filename="plot3.png", width=480, height=480)
  #create time indexing
  time <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')
  #create blank plot
  plot(time, data$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
  #add line graphs of each sub metering
  lines(time, data$Sub_metering_1, col="black")
  lines(time, data$Sub_metering_2, col="red")
  lines(time, data$Sub_metering_3, col="blue")
  #add legend
  legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty=1)
  #close png device
  dev.off()
}