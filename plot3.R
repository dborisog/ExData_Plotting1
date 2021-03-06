setwd("C:/Users/user/gitrep/ExData_Plotting1")

source("preprocessedData.R")


##################
# make plot
##################
##### input ######
# NA
##################
##### output #####
# NA

makePlot3 <- function() {
    dataSet <- importData()
    png(filename = "plot3.png", width = 480, height = 480, units = "px")
    cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
    plot(dataSet$DateTime, dataSet$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
    lines(dataSet$DateTime, dataSet$Sub_metering_2, type="l", col="red")
    lines(dataSet$DateTime, dataSet$Sub_metering_3, type="l", col="blue")
    legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols)
    dev.off()
}

makePlot3()



