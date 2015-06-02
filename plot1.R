## Function to create the first plot for Coursera Exploratory Data Analysis project 1.

plot_1 <- function( ){
      ## Read the data set
      power_con <- read.csv( "household_power_consumption.txt", sep = ";", skip = 66636, nrows = 2880,
                             col.names = c( "Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage",
                                            "Global_intensity", "sub_metering_1", "sub_metering_2", "sub_metering_3" ),
                             na.strings = "?"
                                 )
      
      ## Plot 1
      ## Histogram of Global Active Power
      ## Prints to png file
      png( "plot1.png" )
      hist( power_con$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red" )
      dev.off()
      
      ## Return extracted data
#       power_con
}
