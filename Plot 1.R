## reading, naming and subsetting power consumption data

setwd( "C:/Users/funanani/Desktop/datasciencecoursera")
data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings=" ? ",
                    nrows=2075259, check.names=F, stringsAsFactor=F, comment.char="", quote
 ='\"')
data1 <- subset(data_full, Date %in% c("1/2/2007", "2/2/2007"))
data1$Date <- as.Date(data1$Date, format = "%d/%m/%y")

##caling the basic ploting function

hist(as.numeric(as.character(data1$Global_active_power)), main = "Global Active Power", 
     xlab ="Global Active Power (kilowatts)", ylab = "Frequency", col = "red")


png("plot1.png", width = 480, height = 480)

dev.off()

