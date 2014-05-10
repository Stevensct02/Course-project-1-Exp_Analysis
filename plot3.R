plot3<-function(){
  
  # Change the local sytem
  
  Sys.setlocale(locale = "C")
  
  #Use the observations from the dates 1/2/2007 to 2/2/2007 in the file of the data.
  
  dataset<-read.table(file="household_power_consumption.txt",header=TRUE, sep=";")
  
  #Adding the Date/time colum to the dataset:
  
  Date_time<-paste(dataset$Date,dataset$Time)
  
  Date_time<-strptime(Date_time, "%d/%m/%Y %H:%M:%S")
  
  dataset<-data.frame(dataset,"Date_time"=Date_time)

  
  # Create the plot 3 in the device png:
  
 png(filename="plot3.png",width=480,height=480,bg="transparent")
  
    plot(dataset$Date_time,dataset$Sub_metering_1,main="",xlab="",
       ylab="Energy sub metering", type="l",col="black")
  
    lines(dataset$Date_time,dataset$Sub_metering_2,col="red")
  
    lines(dataset$Date_time,dataset$Sub_metering_3,col="blue")
  
    legend("topright",col=c("black","red","blue"), lty=1,lwd=2,
          legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  
 dev.off()
  
}