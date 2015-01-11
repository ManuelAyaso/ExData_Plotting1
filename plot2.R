source("loadData.R")

data <- getData()

plot(data$Timestamp, data$Global_active_power, type = "n", 
     xlab = "", ylab = "Global Active Power (kilowatts)")