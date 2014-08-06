source("loadData.R")
ADT <- makeCacheData("./household_power_consumption.txt")
data <- loadData(ADT)

png("plot2.png", width = 480, height = 480, units = "px")
plot(data$DateTime, data$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
