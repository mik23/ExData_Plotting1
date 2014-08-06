source("loadData.R")

ADT <- makeCacheData("./household_power_consumption.txt")
data <- loadData(ADT)
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
