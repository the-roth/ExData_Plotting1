# Function will read in a .txt file and extract rows with speific dates only
# Assumes you have the data file, downloadable from 
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
# and saved as 'household_power_consumption.txt'
# Data downloaded on 16th December, 2016.

# I'm not including it in my GitHub account, it just wastes data

data = read.table('household_power_consumption.txt', sep = ';', header = T)

# extract only rows with dates 01/02/2007 and 02/02/2007 and save file
febData = data[grep('^0?[12]/0?2/2007', data$Date),]
write.csv(febData, file = "febData.csv")