# Plot 3

data <- read.table("./Data Science/Exploratory Data Analysis/household_power_consumption.txt",
                   header=T, na.strings=c("NA","?"), sep=";")
subset <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")
subset$datetime <- strptime(paste(subset$Date, subset$Time), format="%d/%m/%Y %H:%M:%S")

png(file="Plot3.png", width = 480, height = 480, units = "px")
plot(subset$datetime, subset$Sub_metering_1, type="n",
     xlab="", ylab="Energy sub metering")
lines(subset$datetime, subset$Sub_metering_1)
lines(subset$datetime, subset$Sub_metering_2, col="red")
lines(subset$datetime, subset$Sub_metering_3, col="blue")

legend("topright", pch="-", col=c("black","red", "blue"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       cex=0.75)
dev.off()




