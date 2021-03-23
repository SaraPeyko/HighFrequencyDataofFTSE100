# Create the data frame of 1s returns in every 5 minutes

RV5m_return1s_03_06_2016 <- data.frame(RV5m_return1s_03_06_2016)
RV5m_return1s_10_06_2016 <- data.frame(RV5m_return1s_10_06_2016)
RV5m_return1s_17_06_2016 <- data.frame(RV5m_return1s_17_06_2016)
RV5m_return1s_24_06_2016 <- data.frame(RV5m_return1s_24_06_2016)

# Create the data frame of 1s returns in every 1 minute

RV1m_return1s_03_06_2016 <- data.frame(RV1m_return1s_03_06_2016)
RV1m_return1s_10_06_2016 <- data.frame(RV1m_return1s_10_06_2016)
RV1m_return1s_17_06_2016 <- data.frame(RV1m_return1s_17_06_2016)
RV1m_return1s_24_06_2016 <- data.frame(RV1m_return1s_24_06_2016)

# The graphs of Realised volatility of 1s returns 
# in every 5 minutes on all Fridays in June 2016

start_5m <- as.POSIXct(strptime("2016-06-22 08:05", format="%Y-%m-%d %H:%M"))

end_5m <- as.POSIXct(strptime("2016-06-22 16:00", format="%Y-%m-%d %H:%M"))

time_5m <- seq(start_5m, end_5m, by="5 min")

comptime_5m <- rep(time_5m, 4)

comprelvol_5m <- c(RV5m_return1s_03_06_2016$RV5m_return1s_03_06_2016,
                   RV5m_return1s_10_06_2016$RV5m_return1s_10_06_2016,
                   RV5m_return1s_17_06_2016$RV5m_return1s_17_06_2016,
                   RV5m_return1s_24_06_2016$RV5m_return1s_24_06_2016)

compday_5m <- c(rep("03rd",length(index(RV5m_return1m_03_06_2016))),
                rep("10th",length(index(RV5m_return1m_03_06_2016))),
                rep("17th",length(index(RV5m_return1m_03_06_2016))),
                rep("24th",length(index(RV5m_return1m_03_06_2016))))

comparison_5m <- data.frame(comptime_5m, comprelvol_5m, compday_5m)

x <- ggplot(comparison_5m, aes(x=comptime_5m, 
                               y=comprelvol_5m, 
                               color=compday_5m)) +
  geom_line() +
  labs(x = "time", y = "realised volatility", color="day") +
  scale_x_datetime(breaks=date_breaks("1 hour"), date_labels = "%H:%M")


# The graphs of Realised volatility of 1s returns 
# in every 1 minute on all Fridays in June 2016

start_1m <- as.POSIXct(strptime("2016-06-22 08:02", format="%Y-%m-%d %H:%M"))

end_1m <- as.POSIXct(strptime("2016-06-22 16:30", format="%Y-%m-%d %H:%M"))

time_1m <- seq(start_1m, end_1m, by="1 min")

comptime_1m <- rep(time_1m, 4)

comprelvol_1m <- c(RV1m_return1s_03_06_2016$RV1m_return1s_03_06_2016,
                   RV1m_return1s_10_06_2016$RV1m_return1s_10_06_2016,
                   RV1m_return1s_17_06_2016$RV1m_return1s_17_06_2016,
                   RV1m_return1s_24_06_2016$RV1m_return1s_24_06_2016)

compday_1m <- c(rep("03rd",length(index(RV1m_return1m_03_06_2016))),
                rep("10th",length(index(RV1m_return1m_03_06_2016))),
                rep("17th",length(index(RV1m_return1m_03_06_2016))),
                rep("24th",length(index(RV1m_return1m_03_06_2016))))

comparison_1m <- data.frame(comptime_1m, comprelvol_1m, compday_1m)

y <- ggplot(comparison_1m, aes(x=comptime_1m, 
                               y=comprelvol_1m, 
                               color=compday_1m)) +
  geom_line() +
  labs(x = "time", y = "realised volatility", color="day") +
  scale_x_datetime(breaks=date_breaks("1 hour"), date_labels = "%H:%M")


grid.arrange(x, y, nrow = 1, ncol=2, top = "Comparing realised volatility of 1s returns on four dates")
