data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, na.strings = "?")
new <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
class(new$Global_active_power)
png("plot1.png", width=480, height=480)
hist(new$Global_active_power,col="red",main="Global Active Power",xlab="new$Global_active_power (kilowatts)")
dev.off()

