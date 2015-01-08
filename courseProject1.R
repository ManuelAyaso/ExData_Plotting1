getData <- function (dir = "./", file) {
    wholeData <- read.csv(paste(dir, file, sep = ""), header = TRUE, sep = ";")
    startDate <- as.Date("2007-02-01", format = "%Y-%m-%d")
    endDate <- as.Date("2007-02-02", format = "%Y-%m-%d")
    data <- wholeData[as.Date(wholeData$Date, format = "%d/%m/%Y") >= startDate & 
                          as.Date(wholeData$Date, format = "%d/%m/%Y") <= endDate, ]
    rm(wholeData, startDate, endDate)
    data
}
