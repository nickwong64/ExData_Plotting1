#read in data
data <- read.table("household_power_consumption.txt", sep=";", dec=".", stringsAsFactors=FALSE, header=TRUE)

#subset date
data1 <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]

gActivePower <- as.numeric(data1$Global_active_power)

dt <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
#plot graph
png("plot2.png", width=480, height=480)
plot(dt, gActivePower, type="l", xlab="", ylab="Global Active Power (Kilowatts)")
dev.off()

