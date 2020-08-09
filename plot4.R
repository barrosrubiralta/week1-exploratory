## plot 4

par(mfrow=c(2,2))

y<-df2[,3]
x<-df2[,10]
plot(x,y,ylab="Global Active Power (kilowatts)", type="n")
lines(x,y)

y0<-df2[,5]
plot(x,y0,ylab="Voltage",xlab="datetime", type="n")
lines(x,y0)

y1<-df2[,7]
y2<-df2[,8]
y3<-df2[,9]
plot(x,y1,ylab="Energy sub metering",xlab="", type="n")
lines(x,y1)
lines(x,y2,col="red")
lines(x,y3,col="blue")
loc<-"topright"
lg<-c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
c<-c("black","red","blue")
legend(loc,legend=lg,text.col="black",pch="I",col=c)

y4<-df2[,4]
plot(x,y4,ylab="Global_reactive_power",xlab="datetime", type="n")
lines(x,y4)
dev.copy(png,file="Plot4.png")
dev.off()