## Function to create the fourth plot for Coursera Exploratory Data Analysis project 1.

plot_4 <- function(){
      ## Read the data set
      power_con <- read.csv( "household_power_consumption.txt", sep = ";", skip = 66636, nrows = 2880,
                             col.names = c( "Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage",
                                            "Global_intensity", "sub_metering_1", "sub_metering_2", "sub_metering_3" ),
                             na.strings = "?"
      )
      
      ## Convert times to Date objects
      times <- paste( power_con$Date, power_con$Time )
      power_con$Time <- strptime( as.character(times), "%d/%m/%Y %H:%M:%S" )
      
      ## Plot 4
      ## Prints to png file
      
      png( "plot4.png" )
      ## Set number of rows and cols of graphs to print
      par( mfcol = c(2,2) )
      
      ## Plot 1st graph
      plot( power_con$Time, power_con$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l" )
      
      ## Plot 2nd graph
      plot( power_con$Time, power_con$sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub Metering" )
      lines( power_con$Time, power_con$sub_metering_2, col = "red" )
      lines( power_con$Time, power_con$sub_metering_3, col = "blue" )
      legend( "topright", c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3" ), col = c( "black", "red", "blue" ), 
              lty = c( 1,1,1 ) )
      
      ## Plot 3rd graph
      plot( power_con$Time, power_con$Voltage, xlab = "datetime", ylab = "Voltage", type = "l" )
      
      ## Plot 4th graph
      plot( power_con$Time, power_con$Global_reactive_power, xlab = "datetime", ylab = "Global Reactive Power", type = "l" )
      
      dev.off()
      ## Return extracted data
#       power_con
}
