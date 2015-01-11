source("loadData.R")

data <- getData()

par(mfrow = c(2, 2))

# Plot row = 1, col = 1
plot(data$Timestamp, data$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power (kilowatts)")

# Plot row = 1, col = 2
plot(data$Timestamp, data$Voltage, type = "l", 
     xlab = "datetime", ylab = "Voltage")

# Plot row = 2, col = 1
plot(data$Timestamp, data$Sub_metering_1, type = "l", 
     xlab = "", ylab = "Energy sub metering")
lines(data$Timestamp, data$Sub_metering_2, col = "red")
lines(data$Timestamp, data$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), lty = c(1, 1, 1), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Plot row = 2, col = 2
plot(data$Timestamp, data$Global_reactive_power, type = "l", 
     xlab = "datetime", ylab = "Global_reactive_power")
