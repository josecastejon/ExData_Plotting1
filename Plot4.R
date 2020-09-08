setwd("C:/Users/USUARIO/Desktop/Data Science Course/R_dir/ExpDataAnalysis_CP1/")
data = read.table("household_power_consumption.txt",header=T,sep=";",dec = ".",na.strings="?")

str(data)
data_sample = subset(data,Date=="1/2/2007" | Date=="2/2/2007")


#Graph 4
png("plot4.png",width=480,height=480)
par(mfrow=c(2,2))
#a)
with(GAP,plot(Date_time,Global_active_power,type="l",
              xlab="",ylab="Global Active Power (kilowatts)"))
#b)
voltage = cbind(datetime,data_sample$Voltage)
colnames(voltage) = c("Date_time","Voltage")
with(voltage,plot(Date_time,Voltage,type="l",
                  xlab="datetime",ylab="Voltage"))
#c)
with(submetering1,plot(Date_time,Sub_metering_1,type="l",
                       xlab="",ylab="Energy sub metering"))
lines(submetering2,col="red")
lines(submetering3,col="blue")
legend("topright",col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=1,cex=0.85,y.intersp = 0.75,bty="n",bg="n")

#d)
GRP = cbind(datetime,data_sample$Global_reactive_power)
colnames(GRP) = c("Date_time","Global_reactive_power")
with(GRP,plot(Date_time,Global_reactive_power,type="l",
              xlab="datetime",ylab="Global_reactive_power"))
dev.off()