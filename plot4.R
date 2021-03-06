source("loadData.R")
ADT <- makeCacheData("./household_power_consumption.txt")
data <- loadData(ADT)

png("plot4.png", width = 480, height = 480, units = "px")

par(mfrow = c(2,2))
plot(data$DateTime, data$Global_active_power, ylab = "Global Active Power", xlab = "", type="l")

plot(data$DateTime, data$Voltage, ylab = "Voltage", xlab = "datetime", type="l")

plot(data$DateTime, data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab="")
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright", col = c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd=1)

plot(data$DateTime, data$Global_reactive_power, xlab = "datetime", ylab="Global_reactive_power", type="l")

dev.off()
