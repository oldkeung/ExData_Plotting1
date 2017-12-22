# Read Data
source("data.R")

# Draw Graph

png("plot3.png")

with(data, plot(DateTime, Sub_metering_1, type="n", xlab = "", ylab = "Energy sub metering"))
with(data, lines(DateTime, Sub_metering_2, col = "red"))
with(data, lines(DateTime, Sub_metering_3, col = "blue"))
with(data, lines(DateTime, Sub_metering_1, col = "black"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = c(1, 1, 1))

dev.off()