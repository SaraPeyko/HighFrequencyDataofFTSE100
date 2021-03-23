### Volatility with time-independent
# The implement of volatility with time-independent (Sigma) from Brownian Motion is equivalent to the estimation
# of standard deviation of log returns for each day where N is the total number of log returns using length
# function and mu is the mean of log returns.

Sigma <- function(logReturn)
{
  N <- length(logReturn)
  
  mu <- (1/N)*sum(logReturn)
  
  sqrt((1/N) * sum((logReturn - mu)^2))
}

# For example, the function is added the log returns of 1m and 1s on 23/06/2016. The time-independent
# volatility is computed by Sigma function using the 1m and 1s returns.
Vol_return1m_23_06_2016 <- Sigma(return_1m_23_06_2016)
Vol_return1m_23_06_2016
Vol_return1s_23_06_2016 <- Sigma(return_1s_23_06_2016)
Vol_return1s_23_06_2016

Vol_return1m_03_06_2016 <- Sigma(return_1m_03_06_2016)
Vol_return1s_03_06_2016 <- Sigma(return_1s_03_06_2016)

Vol_return1m_10_06_2016 <- Sigma(return_1m_10_06_2016)
Vol_return1s_10_06_2016 <- Sigma(return_1s_10_06_2016)

Vol_return1m_17_06_2016 <- Sigma(return_1m_17_06_2016)
Vol_return1s_17_06_2016 <- Sigma(return_1s_17_06_2016)

Vol_return1m_22_06_2016 <- Sigma(return_1m_22_06_2016)
Vol_return1s_22_06_2016 <- Sigma(return_1s_22_06_2016)

Vol_return1m_24_06_2016 <- Sigma(return_1m_24_06_2016)
Vol_return1s_24_06_2016 <- Sigma(return_1s_24_06_2016)

