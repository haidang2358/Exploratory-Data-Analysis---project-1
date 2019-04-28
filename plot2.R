datafile <- ""household_power_consumption.txt")
data <- read.table(datafile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
subsetData <- data[data$Date %in% c("01/02/2007","02/02/2017"),]
glob <- as.numeric(subsetData$Global_active_power)
datetime <- strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot.png", width = 480, height = 480)
plot(datetime, glob, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off