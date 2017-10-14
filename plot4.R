#plot 4
library(dplyr) #for filter()

#Load full dataset
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", getwd())
unzip("exdata%2Fdata%2Fhousehold_power_consumption.zip")
dset <- read.table("household_power_consumption.txt", sep = ';', header = TRUE,stringsAsFactors = FALSE)

#filter nessesary data
dset <- filter(dset, grepl("(^[12])/2/2007", Date))

Dates <- strptime(paste(as.Date(dset$Date, "%d/%m/%Y"), dset$Time), "%Y-%m-%d %H:%M:%S")
dset <- cbind(Dates, select(dset, 3:9))

dset$Global_active_power <- as.numeric(dset$Global_active_power)
dset$Global_reactive_power <- as.numeric(dset$Global_reactive_power)
dset$Voltage <- as.numeric(dset$Voltage)
dset$Global_intensity <- as.numeric(dset$Global_intensity)
dset$Sub_metering_1 <- as.numeric(dset$Sub_metering_1)
dset$Sub_metering_2 <- as.numeric(dset$Sub_metering_2)
dset$Sub_metering_3 <- as.numeric(dset$Sub_metering_3)

par(mfrow = c(2,2))
plot(dset$Dates, dset$Global_active_power, ylab = "Global Active Power (kilowatts)", xlab = "",type = "n")
with(dset, lines(Dates, Global_active_power))

plot(dset$Dates, dset$Voltage, xlab = "datetime", ylab = "Voltage",type = "n")
with(dset, lines(Dates, Voltage))

plot(dset$Dates, dset$Sub_metering_1, xlab = "", ylab = "Energy sub metering",type = "n")
lines(dset$Dates, dset$Sub_metering_1)
lines(dset$Dates,dset$Sub_metering_2, col = "red")
lines(dset$Dates,dset$Sub_metering_3, col = "blue")
legend("topright", lty = c("solid","solid", "solid"),col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(dset$Dates, dset$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power",type = "n")
with(dset, lines(Dates, Global_reactive_power))




