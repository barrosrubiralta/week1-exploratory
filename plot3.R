## plot 3

x<-df2[,10]
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
dev.copy(png,file="Plot3.png")
dev.off()