library(dplyr)

data <- read.table("household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?")
data$DateTime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
data <- select(data, -Date, -Time)
data <- data[as.Date(data$DateTime) >= '2007-02-01' & as.Date(data$DateTime) <= '2007-02-02', ]