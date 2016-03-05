#read in data
data <- read.table("household_power_consumption.txt", sep=";", dec=".", stringsAsFactors=FALSE, header=TRUE)

#subset date
data1 <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]

gActivePower <- as.numeric(data1$Global_active_power)

#plot graph
png("plot1.png", width=480, height=480)
hist(gActivePower, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()

