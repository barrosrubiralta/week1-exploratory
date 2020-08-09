## PLOT 2
dt<-paste(df[,1],df[,2])
dt<-strptime(dt,format="%Y-%m-%d %H:%M:%S")
df2<-cbind(df,dt)
y<-df2[,3]
x<-df2[,10]


plot(x,y,ylab="Global Active Power (kilowatts)", type="n")
lines(x,y)
dev.copy(png,file="Plot2.png")
dev.off()