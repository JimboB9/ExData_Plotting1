# Plot 1

data <- read.table("./Data Science/Exploratory Data Analysis/household_power_consumption.txt",
                 header=T, na.strings=c("NA","?"), sep=";")
subset <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")
subset$datetime <- strptime(paste(subset$Date, subset$Time), format="%d/%m/%Y %H:%M:%S")


png(file="Plot1.png", width = 480, height = 480, units = "px")
hist(subset$Global_active_power, col="red", xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
dev.off()