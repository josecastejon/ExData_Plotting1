setwd("C:/Users/USUARIO/Desktop/Data Science Course/R_dir/ExpDataAnalysis_CP1/")
data = read.table("household_power_consumption.txt",header=T,sep=";",dec = ".",na.strings="?")

str(data)
data_sample = subset(data,Date=="1/2/2007" | Date=="2/2/2007")

#Graph 1
png("plot1.png", width=480, height=480)
with(data_sample,hist(as.numeric(Global_active_power),
                      col="red",main="Global Active Power",
                      xlab="Global Active Power (kilowatts)"))
dev.off()
