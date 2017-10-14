#plot 2
par(mfrow = c(1,1))
plot(dset$Dates, dset$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
lines(dset$Dates, dset$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)")
