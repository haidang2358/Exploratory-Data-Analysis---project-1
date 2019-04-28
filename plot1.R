datafile <- ""household_power_consumption.txt")
data <- read.table(datafile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
subsetData <- data[data$Date %in% c("01/02/2007","02/02/2017"),]
glob <- as.numeric(subsetData$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(glob, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off
