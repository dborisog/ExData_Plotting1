
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
makePlot1 <- function() {
    dataSet <- importData()
    png(filename = "plot1.png", width = 480, height = 480, units = "px")
    hist(dataSet$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
    dev.off()
}

makePlot1()


