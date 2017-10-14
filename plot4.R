#plot 4
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




