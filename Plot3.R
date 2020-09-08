setwd("C:/Users/USUARIO/Desktop/Data Science Course/R_dir/ExpDataAnalysis_CP1/")
data = read.table("household_power_consumption.txt",header=T,sep=";",dec = ".",na.strings="?")

str(data)
data_sample = subset(data,Date=="1/2/2007" | Date=="2/2/2007")

#Graph 3
png("plot3.png",width=480,height=480)
submetering1 = cbind(datetime,data_sample$Sub_metering_1)
colnames(submetering1) = c("Date_time","Sub_metering_1")
with(submetering1,plot(Date_time,Sub_metering_1,type="l",
                       xlab="",ylab="Energy sub metering"))
submetering2 = cbind(datetime,data_sample$Sub_metering_2)
colnames(submetering2) = c("Date_time","Sub_metering_2")
lines(submetering2,col="red")
submetering3 = cbind(datetime,data_sample$Sub_metering_3)
colnames(submetering3) = c("Date_time","Sub_metering_3")
lines(submetering3,col="blue")
legend("topright",col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,cex=0.75)
dev.off()
