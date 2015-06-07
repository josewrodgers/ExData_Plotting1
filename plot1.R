#I create a Function and I locate thisone in the source. 
#The source File is committed too whit the name "loadData.R" and you'll find the function there

#call the source and config variables *-* Available in the repository  "loadData.R"
source("loadData.R")

#construct the dataset with function
dataset <- loadData()

#create the PNG file
png(file = "plot1.png")
hist(dataset$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

#close device
dev.off()