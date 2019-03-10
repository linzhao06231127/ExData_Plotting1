rm(list=ls())
setwd("C:\\Users\\Lin Zhao\\Google Drive\\Data Course\\JHP\\Course4P1\\")
electric<-read.table("household_power_consumption.txt", header=T, sep=";")
attach(electric)
subdata<-subset(electric, Date== "1/2/2007" | Date== "2/2/2007")


hist(as.numeric(as.character(subdata$Global_active_power)),col="red",main="Global Active Power",ylab="Frequency", xlab="Global Active Power(kilowatts)")

subpower <- subset(electric,electric$Date=="1/2/2007" | electric$Date =="2/2/2007")

dev.copy(png,file = "plot1.png")
dev.off()