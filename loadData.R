library(data.table)

loadData <- function(x)
{
    if(is.null(x$getData()))
    {
    data <- read.table(x$getName(), header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
    data$DateTime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
    sub = subset(data, Date=="1/2/2007" | Date == "2/2/2007")
    x$setData(sub)
    
    }
    x$getData()
    
}

makeCacheData <- function(fname) {
  data = NULL
  fileName <<- fname
  setData <- function(y) {
    data <<- y
  }
  getData <- function() data
  getName <- function() fileName
  list(setData = setData, getData = getData, getName = getName)
}

