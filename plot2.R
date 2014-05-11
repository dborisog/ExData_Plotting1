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
makePlot2 <- function() {
    dataSet <- importData()
    png(filename = "plot2.png", width = 480, height = 480, units = "px")
    plot(dataSet$DateTime, dataSet$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
    dev.off()
}

makePlot2()


