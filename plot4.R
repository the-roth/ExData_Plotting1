# Plotting plot 4 of Coursera 4 - Exploratory graphs Week 1 Project
# Function will read in the Feb 1-2 2007 power consumption data
# and create 4 plots (see below for descriptions)

# NOTE: data$dateTime has been changed in this code to data$datetime

data = read.csv('febData.csv')
# might as well add a new column for the date and time
data$datetime = strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

# write plot to file
png('plot4.png')

#set parameters so we can display 4 plots
par(mfrow = c(2, 2))

#plot 2 from earlier, slightly different title
plot(data$datetime, data$Global_active_power,
     type = 'l',
     xlab = '',
     ylab = 'Global Active Power'
)

# voltage as a function of time
with(data, plot(datetime, Voltage, type = 'l'))

# plot 3 from earlier
plot(data$datetime, data$Sub_metering_1,
     type = 'l',
     xlab = '',
     ylab = 'Energy sub metering'
)
lines(data$datetime, data$Sub_metering_2, col = "red")
lines(data$datetime, data$Sub_metering_3, col = "blue")
legend('topright', lty = 1, col = c('black', 'red', 'blue'),
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), bty = 'n')

# Golbal Reactive Power as a function of time
with(data, plot(datetime, Global_reactive_power, type = 'l'))

dev.off()