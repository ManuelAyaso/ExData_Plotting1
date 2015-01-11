getData <- function (dir = "..", file = "household_power_consumption.txt") {
    wholeData <- read.csv(paste(dir, "/", file, sep = ""), header = TRUE, sep = ";")
    startDate <- as.Date("2007-02-01", format = "%Y-%m-%d")
    endDate <- as.Date("2007-02-02", format = "%Y-%m-%d")
    data <- wholeData[as.Date(wholeData$Date, format = "%d/%m/%Y") >= startDate & 
                          as.Date(wholeData$Date, format = "%d/%m/%Y") <= endDate, ]
    rm(wholeData, startDate, endDate)
    data$Global_active_power <- as.numeric(as.character(data$Global_active_power))
    data$timestampt <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
    data
}
