# Plotting plot 3 of Coursera 4 - Exploratory graphs Week 1 Project
# Function will read in the Feb 1-2 2007 power consumption data
# and save a PNG file
# that plots the 3 energy sub metering variables over this period
data = read.csv('febData.csv')
#might as well add a new column for the date and time
data$dateTime = strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

# write plot to file
png('plot3.png')
plot(data$dateTime, data$Sub_metering_1,
     type = 'l',
     xlab = '',
     ylab = 'Energy sub metering'
)
lines(data$dateTime, data$Sub_metering_2, col = "red")
lines(data$dateTime, data$Sub_metering_3, col = "blue")
legend('topright', lty = 1, col = c('black', 'red', 'blue'),
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
dev.off()