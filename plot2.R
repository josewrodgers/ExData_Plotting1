#I create a Function and I locate thisone in the source. 
#The source File is committed too whit the name "loadData.R" and you'll find the function there

#call the source and config variables *-* Available in the repository  "loadData.R"
source("loadData.R")

#construct the dataset with function
dataset <- loadData()

#create the PNG file
png(file = "plot2.png")
with(dataset, plot(x=Time, y=Global_active_power, na.strings = "?", type="l", xlab="", ylab="Global Active Power (kilowatts)"))

#close device
dev.off()