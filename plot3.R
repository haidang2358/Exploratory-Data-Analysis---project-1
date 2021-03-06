datafile <- "./household_power_consumption.txt"
data <- read.table(datafile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
glob <- as.numeric(subsetData$Global_active_power)
datetime <- strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
sub1<-as.numeric(subsetData$Sub_metering_1)
sub2<-as.numeric(subsetData$Sub_metering_2)
sub3<-as.numeric(subsetData$Sub_metering_3)
png("plot3.png", width = 480, height = 480)
plot(datetime, sub1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, sub2, type="l", col="red")
lines(datetime, sub3, type="l", col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1, lwd = 2.5, col = c("Black","Red","Blue"))
dev.off()
