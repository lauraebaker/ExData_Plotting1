household_power_consumption <- read.csv("~/data/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
HPC2007<-household_power_consumption[household_power_consumption$Date=="1/2/2007" | household_power_consumption$Date=="2/2/2007",]
rm(household_power_consumption)
HPC2007$Global_active_power<-as.numeric(HPC2007$Global_active_power)
hist(HPC2007$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.copy(device=png,file="plot1.png",height=480,width=480)
dev.off()