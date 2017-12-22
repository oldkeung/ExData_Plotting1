# Read Data
source("data.R")

# Draw Graph

png("plot1.png")

hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")

dev.off()