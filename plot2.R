## Function to create the second plot for Coursera Exploratory Data Analysis project 1.

plot_2 <- function(){
      ## Read the data set
      power_con <- read.csv( "household_power_consumption.txt", sep = ";", skip = 66636, nrows = 2880,
                             col.names = c( "Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage",
                                            "Global_intensity", "sub_metering_1", "sub_metering_2", "sub_metering_3" ),
                             na.strings = "?"
      )
      
      ## Convert times to Date objects
      times <- paste( power_con$Date, power_con$Time )
      power_con$Time <- strptime( as.character(times), "%d/%m/%Y %H:%M:%S" )
      
      ## Plot 2
      ## Prints to png file
      png( "plot2.png" )
      plot( power_con$Time, power_con$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l" )
      dev.off()
      
      ## Return extracted data
#       power_con
}
