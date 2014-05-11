##################
# download file
##################
##### input ######
# none
##################
##### output #####
# dataSet

importData <- function() {

	csvFile <- "eda_w1_data.csv"
	if(file.exists(csvFile)) {
		dataSet <- read.csv(csvFile)
		dataSet$DateTime <- strptime(dataSet$DateTime, "%Y-%m-%d %H:%M:%S")
	}
	else {

		# download and unzip the file first
		dataSet <- read.table(
						"household_power_consumption.txt", header=T, sep=';', na.strings="?", 
						colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
					)

		dataSet <- dataSet[(dataSet$Date == "1/2/2007") | (dataSet$Date == "2/2/2007"),]
		dataSet$DateTime <- strptime(paste(dataSet$Date, dataSet$Time), "%d/%m/%Y %H:%M:%S")
		write.csv(dataSet, csvFile)
	}

	dataSet
}
