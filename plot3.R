## Function to create the third plot for Coursera Exploratory Data Analysis project 1.

plot_3 <- function(){
      ## Read the data set
      power_con <- read.csv( "household_power_consumption.txt", sep = ";", skip = 66636, nrows = 2880,
                             col.names = c( "Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage",
                                            "Global_intensity", "sub_metering_1", "sub_metering_2", "sub_metering_3" ),
                             na.strings = "?"
      )
      
      ## Convert times to Date objects
      times <- paste( power_con$Date, power_con$Time )
      power_con$Time <- strptime( as.character(times), "%d/%m/%Y %H:%M:%S" )
      
      ## Plot 3
      ## Prints to png file
      png( "plot3.png" )
      plot( power_con$Time, power_con$sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub Metering" )
      lines( power_con$Time, power_con$sub_metering_2, col = "red" )
      lines( power_con$Time, power_con$sub_metering_3, col = "blue" )
      legend( "topright", c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3" ), col = c( "black", "red", "blue" ), 
              lty = c( 1,1,1 ) )
      dev.off()
      
      ## Return extracted data
#       power_con
}
