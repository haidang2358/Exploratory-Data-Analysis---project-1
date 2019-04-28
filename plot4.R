datafile <- ""household_power_consumption.txt")
data <- read.table(datafile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
subsetData <- data[data$Date %in% c("01/02/2007","02/02/2017"),]
glob <- as.numeric(subsetData$Global_active_power)
sub1<-as.numeric(subsetData$Sub_metering_1)
sub2<-as.numeric(subsetData$Sub_metering_2)
sub3<-as.numeric(subsetData$Sub_metering_3)

png("plot3.png", width = 480, height = 480)

plot(datetime, glob, type="l", xlab = "", ylab = "Global active power")

plot(datetime, subsetData$Voltage, type="l", xlab = "datetime", ylab = "Voltage")

plot(datetime, sub1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, sub2, type="l", col="red")
lines(datetime, sub3, type="l", col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("Purple","Red","Blue"))> 
 
plot(datetime, subsetData$Global_reactive_power, type="l", xlab = "", ylab = "Global reactive power")
 
