data <- read.csv(bzfile("repdata-data-StormData.csv.bz2", "repdata-data-StormData.csv"))

data <- read.csv("repdata-data-StormData.csv")

temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
              ,temp)
data <- read.csv(bzfile(temp, "repdata-data-StormData.csv"))
unlink(temp)
