createPlot1 <- function() {
  #load in data
  data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings=c("?",""))
  #extract dates we want - feb. 1, 2007 to feb. 2, 2007
  data <- data[(data$Date=="1/2/2007"|data$Date=="2/2/2007"),]
  #open png device
  png(filename="plot1.png", width=480, height=480)
  #create plot
  hist(data$Global_active_power, col="red", main="Global Active Power",xlab="Global Active Power (kilowatts)", breaks=16)
  #close png device
  dev.off()
}
