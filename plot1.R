plot1<-function(){
  
  #Use the observations from the dates 1/2/2007 to 2/2/2007 in the dataset.
    
  dataset<-read.table(file="household_power_consumption.txt",header=TRUE, sep=";")
  
  png(filename="plot1.png",width=480,height=480,bg="transparent")
    
    par(font.lab=2,font.axis=2,font.main=2,bty="l",ps=13,
        cex.main=1.1,cex.axis=0.92,cex.lab=0.92)
   
    hist(as.numeric(dataset$Global_active_power),xlab="Global Active Power (Kilowatts)",
         main="Global Active Power", col="Red")
 
  dev.off()

}