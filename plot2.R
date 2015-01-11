source("loadData.R")

data <- getData()
png(filename = "plot2.png", width = 480, height = 480)
plot(data$Timestamp, data$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()