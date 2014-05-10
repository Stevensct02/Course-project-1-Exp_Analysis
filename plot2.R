plot2<-function(){
  
  # Change the local sytem
  
  Sys.setlocale(locale = "C")
  
  #Use the observations from the dates 1/2/2007 to 2/2/2007 in the file of the data.
  
  dataset<-read.table(file="household_power_consumption.txt",header=TRUE, sep=";")
    
  Date_time<-paste(dataset$Date,dataset$Time)
  
  Date_time<-strptime(Date_time, "%d/%m/%Y %H:%M:%S")
  
  dataset<-data.frame(dataset,"Date_time"=Date_time)
  
  png(filename="plot2.png",width=480,height=480,bg="transparent")
  
   plot(dataset$Date_time,dataset$Global_active_power,main="",xlab="",
       ylab="Global Active Power (Kilowatts)", type="l",col="black")
  
  dev.off()
 }