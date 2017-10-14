#plot 1 - histogram
par(mfrow =  c(1, 1))
hist(dset$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
