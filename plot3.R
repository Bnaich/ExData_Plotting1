#plot 3
par(mfrow = c(1,1))
plot(dset$Dates, dset$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
lines(dset$Dates, dset$Sub_metering_1)
lines(dset$Dates,dset$Sub_metering_2, col = "red")
lines(dset$Dates,dset$Sub_metering_3, col = "blue")
legend("topright", lty = c("solid","solid", "solid"),col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
