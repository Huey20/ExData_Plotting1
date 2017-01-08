# Create new column that combines date and time data
pwrcons$Timestamp <-as.POSIXct(paste(pwrcons$Date, pwrcons$Time))

# Plot the graph
png(filename = 'plot2.png', width = 480, height = 480, units='px')
plot(pwrcons$Timestamp, pwrcons$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
dev.off()

