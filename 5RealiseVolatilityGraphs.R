# The realised volatility column is added into the data.frame function, 
# because the data needs to be in a column to plot graphs in ggplot function.

# The graphs of realised volatility of 1m and 1s returns are created by using ggplot function. 
# For example, the plot of 1 second return price is made for each day (22/06/2016, 23/06/2016, 24/06/2016) 
# The plot aggregates every hour to calculate the realised volatility estimator.

# This library is needed for data_breaks function
library(scales)

# Create the data frame
RV1hr_return1s_22_06_2016 <- data.frame(RV1hr_return1s_22_06_2016)
RV1hr_return1s_23_06_2016 <- data.frame(RV1hr_return1s_23_06_2016)
RV1hr_return1s_24_06_2016 <- data.frame(RV1hr_return1s_24_06_2016)

# Create the calender time for x axis by computing the time interval of every hour
start_1hr <- as.POSIXct(strptime("2016-06-22 09:00", format="%Y-%m-%d %H:%M"))
end_1hr   <- as.POSIXct(strptime("2016-06-22 16:00", format="%Y-%m-%d %H:%M"))
time_1hr  <- seq(start_1hr, end_1hr, by="1 hour")

# Repeat the index of the time interval to fit for three dates
comptime_1hr   <- rep(time_1hr, 3)

# Get the numeric data from the data frame
comprelvol_1hr <- c(RV1hr_return1s_22_06_2016$RV1hr_return1s_22_06_2016,
                    RV1hr_return1s_23_06_2016$RV1hr_return1s_23_06_2016,
                    RV1hr_return1s_24_06_2016$RV1hr_return1s_24_06_2016)

# Determine the three dates to have the same length with the numeric data
compday_1hr    <- c(rep("22th",length(index(RV1hr_return1s_22_06_2016))),
                    rep("23rd",length(index(RV1hr_return1s_22_06_2016))),
                    rep("24th",length(index(RV1hr_return1s_22_06_2016))))

# Create the new data frame for ggplot function
comparison_1hr <- data.frame(comptime_1hr, comprelvol_1hr, compday_1hr)

# Plot the graph of the comparion of relised volatility on three dates
p <- ggplot(comparison_1hr, aes(x=comptime_1hr, 
                                y=comprelvol_1hr, 
                                color=compday_1hr)) +
  geom_line() +
  labs(x = "time", y = "realised volatility", color="day") +
  scale_x_datetime(breaks=date_breaks("1 hour"), date_labels = "%H:%M")


# The realised volatility of 1s returns on three dates is an appropriate estimator 
# when time changes every hour, 30 minutes, 15 minutes, 10 minutes, 5 minutes and 1 minute, respectively.

RV1hr_return1s_22_06_2016 <- data.frame(RV1hr_return1s_22_06_2016)
RV1hr_return1s_23_06_2016 <- data.frame(RV1hr_return1s_23_06_2016)
RV1hr_return1s_24_06_2016 <- data.frame(RV1hr_return1s_24_06_2016)

RV30m_return1s_22_06_2016 <- data.frame(RV30m_return1s_22_06_2016)
RV30m_return1s_23_06_2016 <- data.frame(RV30m_return1s_23_06_2016)
RV30m_return1s_24_06_2016 <- data.frame(RV30m_return1s_24_06_2016)

RV15m_return1s_22_06_2016 <- data.frame(RV15m_return1s_22_06_2016)
RV15m_return1s_23_06_2016 <- data.frame(RV15m_return1s_23_06_2016)
RV15m_return1s_24_06_2016 <- data.frame(RV15m_return1s_24_06_2016)

RV10m_return1s_22_06_2016 <- data.frame(RV10m_return1s_22_06_2016)
RV10m_return1s_23_06_2016 <- data.frame(RV10m_return1s_23_06_2016)
RV10m_return1s_24_06_2016 <- data.frame(RV10m_return1s_24_06_2016)

RV5m_return1s_22_06_2016 <- data.frame(RV5m_return1s_22_06_2016)
RV5m_return1s_23_06_2016 <- data.frame(RV5m_return1s_23_06_2016)
RV5m_return1s_24_06_2016 <- data.frame(RV5m_return1s_24_06_2016)

RV1m_return1s_22_06_2016 <- data.frame(RV1m_return1s_22_06_2016)
RV1m_return1s_23_06_2016 <- data.frame(RV1m_return1s_23_06_2016)
RV1m_return1s_24_06_2016 <- data.frame(RV1m_return1s_24_06_2016)

################################################################################

start_1hr <- as.POSIXct(strptime("2016-06-22 09:00", format="%Y-%m-%d %H:%M"))

end_1hr <- as.POSIXct(strptime("2016-06-22 16:00", format="%Y-%m-%d %H:%M"))

time_1hr <- seq(start_1hr, end_1hr, by="1 hour")

comptime_1hr <- rep(time_1hr, 3)

comprelvol_1hr <- c(RV1hr_return1s_22_06_2016$RV1hr_return1s_22_06_2016,
                    RV1hr_return1s_23_06_2016$RV1hr_return1s_23_06_2016,
                    RV1hr_return1s_24_06_2016$RV1hr_return1s_24_06_2016)

compday_1hr <- c(rep("22th",length(index(RV1hr_return1s_22_06_2016))),
                 rep("23rd",length(index(RV1hr_return1s_22_06_2016))),
                 rep("24th",length(index(RV1hr_return1s_22_06_2016))))

comparison_1hr <- data.frame(comptime_1hr, comprelvol_1hr, compday_1hr)

p <- ggplot(comparison_1hr, aes(x=comptime_1hr, 
                                y=comprelvol_1hr, 
                                color=compday_1hr)) +
  geom_line() +
  labs(x = "time", y = "realised volatility", color="day") +
  scale_x_datetime(breaks=date_breaks("1 hour"), date_labels = "%H:%M")

###############################################################################

start_30m <- as.POSIXct(strptime("2016-06-22 08:30", format="%Y-%m-%d %H:%M"))

end_30m <- as.POSIXct(strptime("2016-06-22 16:00", format="%Y-%m-%d %H:%M"))

time_30m <- seq(start_30m, end_30m, by="30 min")

comptime_30m <- rep(time_30m, 3)

comprelvol_30m <- c(RV30m_return1s_22_06_2016$RV30m_return1s_22_06_2016,
                    RV30m_return1s_23_06_2016$RV30m_return1s_23_06_2016,
                    RV30m_return1s_24_06_2016$RV30m_return1s_24_06_2016)

compday_30m <- c(rep("22th",length(index(RV30m_return1s_22_06_2016))),
                 rep("23rd",length(index(RV30m_return1s_22_06_2016))),
                 rep("24th",length(index(RV30m_return1s_22_06_2016))))

comparison_30m <- data.frame(comptime_30m, comprelvol_30m, compday_30m)

q <- ggplot(comparison_30m, aes(x=comptime_30m, 
                                y=comprelvol_30m, 
                                color=compday_30m)) +
  geom_line() +
  labs(x = "time", y = "realised volatility", color="day") +
  scale_x_datetime(breaks=date_breaks("1 hour"), date_labels = "%H:%M")

###############################################################################

start_15m <- as.POSIXct(strptime("2016-06-22 08:15", format="%Y-%m-%d %H:%M"))

end_15m <- as.POSIXct(strptime("2016-06-22 16:00", format="%Y-%m-%d %H:%M"))

time_15m <- seq(start_15m, end_15m, by="15 min")

comptime_15m <- rep(time_15m, 3)

comprelvol_15m <- c(RV15m_return1s_22_06_2016$RV15m_return1s_22_06_2016,
                    RV15m_return1s_23_06_2016$RV15m_return1s_23_06_2016,
                    RV15m_return1s_24_06_2016$RV15m_return1s_24_06_2016)

compday_15m <- c(rep("22th",length(index(RV15m_return1s_22_06_2016))),
                 rep("23rd",length(index(RV15m_return1s_22_06_2016))),
                 rep("24th",length(index(RV15m_return1s_22_06_2016))))

comparison_15m <- data.frame(comptime_15m, comprelvol_15m, compday_15m)

r <- ggplot(comparison_15m, aes(x=comptime_15m, 
                                y=comprelvol_15m, 
                                color=compday_15m)) +
  geom_line() +
  labs(x = "time", y = "realised volatility", color="day") +
  scale_x_datetime(breaks=date_breaks("1 hour"), date_labels = "%H:%M")

###############################################################################

start_10m <- as.POSIXct(strptime("2016-06-22 08:10", format="%Y-%m-%d %H:%M"))

end_10m <- as.POSIXct(strptime("2016-06-22 16:00", format="%Y-%m-%d %H:%M"))

time_10m <- seq(start_10m, end_10m, by="10 min")

comptime_10m <- rep(time_10m, 3)

comprelvol_10m <- c(RV10m_return1s_22_06_2016$RV10m_return1s_22_06_2016,
                    RV10m_return1s_23_06_2016$RV10m_return1s_23_06_2016,
                    RV10m_return1s_24_06_2016$RV10m_return1s_24_06_2016)

compday_10m <- c(rep("22th",length(index(RV10m_return1s_22_06_2016))),
                 rep("23rd",length(index(RV10m_return1s_22_06_2016))),
                 rep("24th",length(index(RV10m_return1s_22_06_2016))))

comparison_10m <- data.frame(comptime_10m, comprelvol_10m, compday_10m)

s <- ggplot(comparison_10m, aes(x=comptime_10m, 
                                y=comprelvol_10m, 
                                color=compday_10m)) +
  geom_line() +
  labs(x = "time", y = "realised volatility", color="day") +
  scale_x_datetime(breaks=date_breaks("1 hour"), date_labels = "%H:%M")

###############################################################################

start_5m <- as.POSIXct(strptime("2016-06-22 08:05", format="%Y-%m-%d %H:%M"))

end_5m <- as.POSIXct(strptime("2016-06-22 16:00", format="%Y-%m-%d %H:%M"))

time_5m <- seq(start_5m, end_5m, by="5 min")

comptime_5m <- rep(time_5m, 3)

comprelvol_5m <- c(RV5m_return1s_22_06_2016$RV5m_return1s_22_06_2016,
                   RV5m_return1s_23_06_2016$RV5m_return1s_23_06_2016,
                   RV5m_return1s_24_06_2016$RV5m_return1s_24_06_2016)

compday_5m <- c(rep("22th",length(index(RV5m_return1s_22_06_2016))),
                rep("23rd",length(index(RV5m_return1s_22_06_2016))),
                rep("24th",length(index(RV5m_return1s_22_06_2016))))

comparison_5m <- data.frame(comptime_5m, comprelvol_5m, compday_5m)

t <- ggplot(comparison_5m, aes(x=comptime_5m, 
                               y=comprelvol_5m, 
                               color=compday_5m)) +
  geom_line() +
  labs(x = "time", y = "realised volatility", color="day") +
  scale_x_datetime(breaks=date_breaks("1 hour"), date_labels = "%H:%M")

###############################################################################

start_1m <- as.POSIXct(strptime("2016-06-22 08:02", format="%Y-%m-%d %H:%M"))

end_1m <- as.POSIXct(strptime("2016-06-22 16:30", format="%Y-%m-%d %H:%M"))

time_1m <- seq(start_1m, end_1m, by="1 min")

comptime_1m <- rep(time_1m, 3)

comprelvol_1m <- c(RV1m_return1s_22_06_2016$RV1m_return1s_22_06_2016,
                   RV1m_return1s_23_06_2016$RV1m_return1s_23_06_2016,
                   RV1m_return1s_24_06_2016$RV1m_return1s_24_06_2016)

compday_1m <- c(rep("22th",length(index(RV1m_return1s_22_06_2016))),
                rep("23rd",length(index(RV1m_return1s_22_06_2016))),
                rep("24th",length(index(RV1m_return1s_22_06_2016))))

comparison_1m <- data.frame(comptime_1m, comprelvol_1m, compday_1m)

u <- ggplot(comparison_1m, aes(x=comptime_1m, 
                               y=comprelvol_1m, 
                               color=compday_1m)) +
  geom_line() +
  labs(x = "time", y = "realised volatility", color="day") +
  scale_x_datetime(breaks=date_breaks("1 hour"), date_labels = "%H:%M")

###############################################################################

grid.arrange(p, q, r, s, t, u, nrow = 3, ncol = 2,
             top = "Comparing realised volatility of 1s returns on three dates")



