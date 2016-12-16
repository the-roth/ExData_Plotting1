# Plotting plot 2 of Coursera 4 - Exploratory graphs Week 1 Project
# Function will read in the Feb 1-2 2007 power consumption data
# and save a PNG file
# that plots the Global Active Power (in kilowatts) over time
data = read.csv('febData.csv')
#might as well add a new column for the date and time
data$dateTime = strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

# write plot to file
png('plot2.png')
plot(data$dateTime, data$Global_active_power,
     type = 'l',
     xlab = '',
     ylab = 'Global Active Power (kilowatts)'
)
dev.off()