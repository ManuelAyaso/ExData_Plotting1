source("loadData.R")

data <- getData()
png(filename = "plot3.png", width = 480, height = 480)
plot(data$Timestamp, data$Sub_metering_1, type = "l", 
     xlab = "", ylab = "Energy sub metering")
lines(data$Timestamp, data$Sub_metering_2, col = "red")
lines(data$Timestamp, data$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), lty = c(1, 1, 1), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()