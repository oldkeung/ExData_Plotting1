# Read Data
source("data.R")

# Draw Graph

png("plot4.png")

par(mfrow=c(2,2))

# Upper Left (~Plot 2)

with(data, plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power"))

# Upper Right

with(data, plot(DateTime, Voltage, type = "l", xlab = "datetime"))

# Lower Left (Plot 3)

with(data, plot(DateTime, Sub_metering_1, type="n", xlab = "", ylab = "Energy sub metering"))
with(data, lines(DateTime, Sub_metering_2, col = "red"))
with(data, lines(DateTime, Sub_metering_3, col = "blue"))
with(data, lines(DateTime, Sub_metering_1, col = "black"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = c(1, 1, 1), bty = "n")

# Lower Right
with(data, plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime"))

dev.off()