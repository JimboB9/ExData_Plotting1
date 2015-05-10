# Plot 2

data <- read.table("./Data Science/Exploratory Data Analysis/household_power_consumption.txt",
                   header=T, na.strings=c("NA","?"), sep=";")
subset <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")
subset$datetime <- strptime(paste(subset$Date, subset$Time), format="%d/%m/%Y %H:%M:%S")

png(file="Plot2.png", width = 480, height = 480, units = "px")
plot(subset$datetime, subset$Global_active_power, type="n",
     xlab="", ylab="Global Active Power (kilowatts)")
lines(subset$datetime, subset$Global_active_power, type="l")
dev.off()
