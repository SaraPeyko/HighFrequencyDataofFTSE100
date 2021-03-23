## Set working directory 
getwd()
setwd("C:/Users/Busara/R projects/High Frequency Data of FTSE100/Data")
# Or Session -> Set Working Directory -> Choose Directory 
# -> R projects -> High Frequency Data of FTSE100 -> Data
#
# All codes can be successufully Run 
# All variables are saved to Global Environment
# The results are shown in the Console
# Workspace is saved in .RData file

### Manipulation of High Frequency Data
# The options base is needed to allow setting the Local Time columns. 
# The options base scipen is set to 999 which applies the milliseconds 
# to prevent scientific notation e.g. exponential notation (e) 
# The digits secs base controls the total number of digits, 
# in this case the milliseconds are manipulated to 3 decimal places.
options(scipen = 999)
options(digits.secs = 3)

# The R utils package has a read.csv function which imports 
# the high frequency data from chosen directory.
FTSE100_03_06_2016 <- read.csv("FTSE100_03_06_2016.csv")
FTSE100_10_06_2016 <- read.csv("FTSE100_10_06_2016.csv")
FTSE100_17_06_2016 <- read.csv("FTSE100_17_06_2016.csv")
FTSE100_22_06_2016 <- read.csv("FTSE100_22_06_2016.csv")
FTSE100_24_06_2016 <- read.csv("FTSE100_24_06_2016.csv")

# The bid and ask prices of FTSE100 are included the date and time as the column name, 
# Local Time which is shown the milliseconds time of bid and ask prices. 
# For example, the FTSE100 on the date 23/06/2016 shows the first 5 rows using head function as shown below:
FTSE100_23_06_2016 <- read.csv("FTSE100_23_06_2016.csv")
head(FTSE100_23_06_2016, 5)

# The FTSE100 on the date 23/06/2016 shows the last 5 rows using tail function of the observations as shown below:
tail(FTSE100_23_06_2016, 5)

# Using the strptime function from xts library converts the factor class 
# in Local time column to objects of class POSIXlt representing calendar dates 
# and times. The stock index FTSE100 on 23/06/2016 is converted the Local time 
# from 23.06.2016 08:00:00.242 GMT+0100 to 2016-06-23 08:00:00.242 BST (POSIXlt format) 
# then using as.xts function to organise the sequence of ask and bid prices by Local time column.
library(xts)

FTSE100_23_06_2016$Local.time <- strptime(FTSE100_23_06_2016$Local.time,
                                          "%d.%m.%Y %H:%M:%OS")
stock_index_23_06_2016 <- as.xts(cbind(FTSE100_23_06_2016$Ask,FTSE100_23_06_2016$Bid),
                                 order.by=FTSE100_23_06_2016$Local.time)

# At this point, the  quote data is required to create column names Ask and Bid using colnames function
# because zoo series that comes with xts library is only possible with column names.
colnames(stock_index_23_06_2016) <- c("Ask","Bid")
head(stock_index_23_06_2016,3)

# The midpoint of bid and ask prices can be defined by the half of the bid and ask price together then using names 
# function to create midpoint column.
mid_stock_index_23_06_2016 <- (stock_index_23_06_2016$Ask + stock_index_23_06_2016$Bid)/2
names(mid_stock_index_23_06_2016) <- "midpoint"
head(mid_stock_index_23_06_2016,3)

###############################################################################################################################
FTSE100_03_06_2016$Local.time <- strptime(FTSE100_03_06_2016$Local.time, "%d.%m.%Y %H:%M:%OS")
stock_index_03_06_2016 <- as.xts(cbind(FTSE100_03_06_2016$Ask,FTSE100_03_06_2016$Bid), order.by=FTSE100_03_06_2016$Local.time)
colnames(stock_index_03_06_2016) <- c("Ask","Bid")
mid_stock_index_03_06_2016 <- (stock_index_03_06_2016$Ask + stock_index_03_06_2016$Bid) / 2
names(mid_stock_index_03_06_2016) <- "midpoint"

FTSE100_10_06_2016$Local.time <- strptime(FTSE100_10_06_2016$Local.time, "%d.%m.%Y %H:%M:%OS")
stock_index_10_06_2016 <- as.xts(cbind(FTSE100_10_06_2016$Ask,FTSE100_10_06_2016$Bid), order.by=FTSE100_10_06_2016$Local.time)
colnames(stock_index_10_06_2016) <- c("Ask","Bid")
mid_stock_index_10_06_2016 <- (stock_index_10_06_2016$Ask + stock_index_10_06_2016$Bid) / 2
names(mid_stock_index_10_06_2016) <- "midpoint"

FTSE100_17_06_2016$Local.time <- strptime(FTSE100_17_06_2016$Local.time, "%d.%m.%Y %H:%M:%OS")
stock_index_17_06_2016 <- as.xts(cbind(FTSE100_17_06_2016$Ask,FTSE100_17_06_2016$Bid), order.by=FTSE100_17_06_2016$Local.time)
colnames(stock_index_17_06_2016) <- c("Ask","Bid")
mid_stock_index_17_06_2016 <- (stock_index_17_06_2016$Ask + stock_index_17_06_2016$Bid) / 2
names(mid_stock_index_17_06_2016) <- "midpoint"

FTSE100_22_06_2016$Local.time <- strptime(FTSE100_22_06_2016$Local.time, "%d.%m.%Y %H:%M:%OS")
stock_index_22_06_2016 <- as.xts(cbind(FTSE100_22_06_2016$Ask,FTSE100_22_06_2016$Bid), order.by=FTSE100_22_06_2016$Local.time)
colnames(stock_index_22_06_2016) <- c("Ask","Bid")
mid_stock_index_22_06_2016 <- (stock_index_22_06_2016$Ask + stock_index_22_06_2016$Bid) / 2
names(mid_stock_index_22_06_2016) <- "midpoint"

FTSE100_24_06_2016$Local.time <- strptime(FTSE100_24_06_2016$Local.time, "%d.%m.%Y %H:%M:%OS")
stock_index_24_06_2016 <- as.xts(cbind(FTSE100_24_06_2016$Ask,FTSE100_24_06_2016$Bid), order.by=FTSE100_24_06_2016$Local.time)
colnames(stock_index_24_06_2016) <- c("Ask","Bid")
mid_stock_index_24_06_2016 <- (stock_index_24_06_2016$Ask + stock_index_24_06_2016$Bid) / 2
names(mid_stock_index_24_06_2016) <- "midpoint"
################################################################################################################################

# Thehighfrequency package is the tools for high frequency data analysis which provides 
# functionality to manage, clean and match quotes and trades data.
# his can be done using aggregateTS function from highfrequency package. 
# For example, FTSE 100 on 23/06/2016 manipulates 08:02:00, 08:03:00 and 08:04:00 
# that show the changes of time every 1 minute and 08:00:01, 08:00:02 and 08:00:03 
# that show the changes of time every 1 second. The high frequency data has the large observations 
# which needs to put together because it is more tracable but it can lose the observations.
library(highfrequency)

mid_1m_23_06_2016 <- aggregateTS(mid_stock_index_23_06_2016, alignBy="minutes", alignPeriod=1)
mid_1s_23_06_2016 <- aggregateTS(mid_stock_index_23_06_2016, alignBy="seconds", alignPeriod=1)

# The returns of 1 minute and 1 second can be computed by taking log function and use diff function
# with taking away the first row as it produces the null $(NA)$.
return_1m_23_06_2016 <- diff(log(mid_1m_23_06_2016))[-1]
names(return_1m_23_06_2016) <- "return1m"
return_1s_23_06_2016 <- diff(log(mid_1s_23_06_2016))[-1]
names(return_1s_23_06_2016) <- "return1s"

# FTSE 100 on 23/06/2016 indicates the evenly spacing in 1 minute 
# and the log return prices in return 1 minute column.
head(return_1m_23_06_2016,3)

# FTSE 100 on 23/06/2016 indicates the evenly spacing in 1 second 
# and the log return prices in return 1 second column.
head(return_1s_23_06_2016,3)

#################################################################################################
mid_1m_03_06_2016 <- aggregateTS(mid_stock_index_03_06_2016, alignBy="minutes", alignPeriod=1)
return_1m_03_06_2016 <- diff(log(mid_1m_03_06_2016))[-1]
names(return_1m_03_06_2016) <- "return1m"
mid_1s_03_06_2016 <- aggregateTS(mid_stock_index_03_06_2016, alignBy="seconds", alignPeriod=1)
return_1s_03_06_2016 <- diff(log(mid_1s_03_06_2016))[-1]
names(return_1s_03_06_2016) <- "return1s"

mid_1m_10_06_2016 <- aggregateTS(mid_stock_index_10_06_2016, alignBy="minutes", alignPeriod=1)
return_1m_10_06_2016 <- diff(log(mid_1m_10_06_2016))[-1]
names(return_1m_10_06_2016) <- "return1m"
mid_1s_10_06_2016 <- aggregateTS(mid_stock_index_10_06_2016, alignBy="seconds", alignPeriod=1)
return_1s_10_06_2016 <- diff(log(mid_1s_10_06_2016))[-1]
names(return_1s_10_06_2016) <- "return1s"

mid_1m_17_06_2016 <- aggregateTS(mid_stock_index_17_06_2016, alignBy="minutes", alignPeriod=1)
return_1m_17_06_2016 <- diff(log(mid_1m_17_06_2016))[-1][-510] # length needs to be 509
names(return_1m_17_06_2016) <- "return1m"
mid_1s_17_06_2016 <- aggregateTS(mid_stock_index_17_06_2016, alignBy="seconds", alignPeriod=1)
return_1s_17_06_2016 <- diff(log(mid_1s_17_06_2016))[-1][-510] # length needs to be 30599
names(return_1s_17_06_2016) <- "return1s"

mid_1m_22_06_2016 <- aggregateTS(mid_stock_index_22_06_2016, alignBy="minutes", alignPeriod=1)
return_1m_22_06_2016 <- diff(log(mid_1m_22_06_2016))[-1]
names(return_1m_22_06_2016) <- "return1m"
mid_1s_22_06_2016 <- aggregateTS(mid_stock_index_22_06_2016, alignBy="seconds", alignPeriod=1)
return_1s_22_06_2016 <- diff(log(mid_1s_22_06_2016))[-1]
names(return_1s_22_06_2016) <- "return1s"

mid_1m_24_06_2016 <- aggregateTS(mid_stock_index_24_06_2016, alignBy="minutes", alignPeriod=1)
return_1m_24_06_2016 <- diff(log(mid_1m_24_06_2016))[-1]
names(return_1m_24_06_2016) <- "return1m"
mid_1s_24_06_2016 <- aggregateTS(mid_stock_index_24_06_2016, alignBy="seconds", alignPeriod=1)
return_1s_24_06_2016 <- diff(log(mid_1s_24_06_2016))[-1]
names(return_1s_24_06_2016) <- "return1s"
################################################################################################

# After the manipulations of high frequency data, the stock index FTSE 100 consists 
# of 1 minute and 1 second log return prices on 22/06/2016, 23/06/2016 and 24/06/2016. 
# Moreover, the previous Fridays on 03/06/2016, 10/06/2016 and 17/06/2016 of FTSE 100 
# consists of 1 minute and 1 second log return prices are considered for analysis 
# which are able to compare with the analysis of FTSE100 on 24/06/2016. 
# At this point, the implement of volatility with time-independent and 
# Realised Volatility are going to be computed in R as a function.
