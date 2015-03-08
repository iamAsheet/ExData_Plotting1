myFile <- "household_power_consumption.txt"
powerData <- read.table(myFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetpowerData <- powerData[powerData$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(subSetpowerData$Date, subSetpowerData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetpowerData$Global_active_power)
png("plot2.png", width=480, height=480,unit="px")
plot(datetime, globalActivePower, type="l",main="", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
