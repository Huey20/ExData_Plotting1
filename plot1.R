# Read the data (selected)
data <- fread("household_power_consumption.txt", na.strings="?",stringsAsFactors = FALSE)
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
pwrcons <- data[(data$Date=="2007-02-01")|(data$Date=="2007-02-02"),]


# Plot 1
## Red Histogram
par(mfrow=c(1,1))
hist(pwrcons$Global_active_power, col="red")
