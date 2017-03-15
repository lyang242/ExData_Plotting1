data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, na.strings = "?")
new <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
png("plot2.png", width=480, height=480)
datetime <- strptime(paste(new$Date, new$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime,new$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()