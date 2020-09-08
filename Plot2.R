setwd("C:/Users/USUARIO/Desktop/Data Science Course/R_dir/ExpDataAnalysis_CP1/")
data = read.table("household_power_consumption.txt",header=T,sep=";",dec = ".",na.strings="?")

str(data)
data_sample = subset(data,Date=="1/2/2007" | Date=="2/2/2007")

#Graph 2
png("plot2.png",width=480,height=480)
datetime = as.Date(data_sample$Date,format = "%d/%m/%Y")
datetime = paste(datetime,data_sample$Time)
datetime = as.POSIXct(datetime)
datetime = as.data.frame(datetime)
GAP = cbind(datetime,data_sample$Global_active_power)
colnames(GAP) = c("Date_time","Global_active_power")
with(GAP,plot(Date_time,Global_active_power,type="l",
              xlab="",ylab="Global Active Power (kilowatts)"))
dev.off()