plot1<-function(){
  
  #Use the observations from the dates 1/2/2007 to 2/2/2007 in the dataset.
  

  
  dataset<-read.table(file="household_power_consumption.txt",header=TRUE, sep=";")
  
  png(filename="plot1.png",width=480,height=480,bg="transparent")
    
    hist(as.numeric(dataset$Global_active_power),main="Global Active Power",
         xlab="Global Active Power (Kilowatts)",col="Red")
  
  dev.off()

}