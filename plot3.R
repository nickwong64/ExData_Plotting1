#read in data
data <- read.table("household_power_consumption.txt", sep=";", dec=".", stringsAsFactors=FALSE, header=TRUE)

#subset date
data1 <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]

smeter1 <- as.numeric(data1$Sub_metering_1)
smeter2 <- as.numeric(data1$Sub_metering_2)
smeter3 <- as.numeric(data1$Sub_metering_3)

dt <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
#plot graph
png("plot3.png", width=480, height=480)
plot(dt, smeter1, type="l", xlab="", ylab="Energy sub metering")
lines(dt, smeter2, type="l", col="red")
lines(dt, smeter3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
lty=1, col=c("black", "red", "blue"))
dev.off()

