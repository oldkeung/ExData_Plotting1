# Read Data
source("data.R")

# Draw Graph

png("plot2.png")

with(data, plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))

dev.off()