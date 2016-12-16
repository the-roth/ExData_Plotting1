# Function will read in the Feb 1-2 2007 power consumption data
# and plot / save a PNG file
# that plots a histogram of the Global Active Power (in kilowatts)
data = read.csv('febData.csv')

# write plot to file
png('plot1.png')
hist(data$Global_active_power, col = 'red',
     main = 'Global Active Power',
     xlab = 'Global Active Power (kilowatts)',
     ylim = c(0, 1200)
)
dev.off()