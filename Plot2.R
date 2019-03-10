electric<-read.table("household_power_consumption.txt", header=T, sep=";")
attach(electric)
subdata<-subset(electric, Date== "1/2/2007" | Date== "2/2/2007")


subdata$Date <- as.Date(subdata$Date, format="%d/%m/%Y")
subdata$Time <- strptime(subdata$Time, format="%H:%M:%S")
subdata[1:1440,"Time"] <- format(subdata[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subdata[1441:2880,"Time"] <- format(subdata[1441:2880,"Time"],"2007-02-02 %H:%M:%S")
plot(subdata$Time,as.numeric(as.character(subdata$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)",main="Global Active Power Vs Time") 

dev.copy(png,file = "plot2.png")
dev.off()
