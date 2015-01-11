source("loadData.R")

data <- getData()

plot(data$Timestamp, data$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power (kilowatts)")