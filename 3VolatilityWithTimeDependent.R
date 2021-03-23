### Volatility with time-dependent

# The implement of volatility with time-dependent is equivalent to the estimation of realised volatility of log returns for each day.
# This can be computed by creating the Realised Volatility function.
# 
# The function needs two variables which are log return price, such as 1m return and 1s return, 
# and the time interval when time changes every 1 hour (60 minutes), 30 minutes, 15 minutes, 10 minutes, 5 minutes and 1 minute. 
# The realised volatility function computes the sum of absolute of log returns in different time interval power two as the quadratic variation.

lenReturn1m <- length(return_1m_03_06_2016) # Set the number of the length of return1m
lenReturn1s <- length(return_1s_03_06_2016) # Set the number of the length of return1s

RV <- function(return, m)
{
  
  # 1 minute return
  if (length(return) == lenReturn1m) 
  {
    
    # Realised Volatility every 1 hour
    if (m == 60)
    { 
      RV <- 0
      for(t in 1:8)
      {
        
        # For example, the realised volatility function computes the sum 
        # of absolute of log returns in different time interval power two.         
        RV[t] <- sum( abs( return[ (m*(t-1)+1):(m*t) ] )^ 2 )
        
      }
      RV
    }
    
    
    # Realised Volatility every 30 minutes
    else if (m == 30)
    {
      RV <- 0
      for(t in 1:16)
      {
        RV[t] <- sum( abs( return[ (m*(t-1)+1):(m*t) ] )^ 2 )
      }
      RV
    }
    
    
    # Realised Volatility every 15 minutes
    else if (m == 15)
    {
      RV <- 0
      for(t in 1:32)
      {
        RV[t] <- sum( abs( return[ (m*(t-1)+1):(m*t) ] )^ 2 )
      }
      RV
    }
    
    
    # Realised Volatility every 10 minutes
    else if (m == 10)
    {
      RV <- 0
      for(t in 1:48)
      {
        RV[t] <- sum( abs( return[ (m*(t-1)+1):(m*t) ] )^ 2 )
      }
      RV
    }
    
    
    # Realised Volatility every 5 minutes
    else if (m == 5)
    {
      RV <- 0
      for(t in 1:96)
      {
        RV[t] <- sum( abs( return[ (m*(t-1)+1):(m*t) ] )^ 2 )
      }
      RV
    }
    
    
    # Realised Volatility every 1 minute
    else if (m == 1)
    {
      RV <- 0
      for(t in 1:509)
      {
        RV[t] <- sum( abs( return[ (m*(t-1)+1):(m*t) ] )^ 2 )
      }
      RV
    }
    
  } 
  
  # 1 second return
  else if (length(return) == lenReturn1s)
  {
    
    # Realised Volatility every 1 hour
    if (m == 60)
    { 
      RV <- 0
      for(t in 1:8)
      {
        
        # For example, the realised volatility function computes the sum 
        # of absolute of log returns in different time interval power two. 
        RV[t] <- sum( abs( return[ (60*m*(t-1)+1):(60*m*t) ] )^ 2 )
        
      }
      RV
    }
    
    
    # Realised Volatility every 30 minutes
    else if (m == 30)
    {
      RV <- 0
      for(t in 1:16)
      {
        RV[t] <- sum( abs( return[ (60*m*(t-1)+1):(60*m*t) ] )^ 2 )
      }
      RV
    }
    
    
    # Realised Volatility every 15 minutes
    else if (m == 15)
    {
      RV <- 0
      for(t in 1:32)
      {
        RV[t] <- sum( abs( return[ (60*m*(t-1)+1):(60*m*t) ] )^ 2 )
      }
      RV
    }
    
    
    # Realised Volatility every 10 minutes
    else if (m == 10)
    {
      RV <- 0
      for(t in 1:48)
      {
        RV[t] <- sum( abs( return[ (60*m*(t-1)+1):(60*m*t) ] )^ 2 )
      }
      RV
    }
    
    
    # Realised Volatility every 5 minutes
    else if (m == 5)
    {
      RV <- 0
      for(t in 1:96)
      {
        RV[t] <- sum( abs( return[ (60*m*(t-1)+1):(60*m*t) ] )^ 2 )
      }
      RV
    }
    
    
    # Realised Volatility every 1 minute
    else if (m == 1)
    {
      RV <- 0
      for(t in 1:509)
      {
        RV[t] <- sum( abs( return[ (60*m*(t-1)+1):(60*m*t) ] )^ 2 )
      }
      RV
    }
  }
}

# Realised Volatility of 1 minute returns in every hour, 
# 30 minutes, 15 minutes, 10 minutes, 5 minutes and 1 minute

RV1hr_return1m_23_06_2016 <- RV(return_1m_23_06_2016, 60)
RV30m_return1m_23_06_2016 <- RV(return_1m_23_06_2016, 30)
RV15m_return1m_23_06_2016 <- RV(return_1m_23_06_2016, 15)
RV10m_return1m_23_06_2016 <- RV(return_1m_23_06_2016, 10)
RV5m_return1m_23_06_2016  <- RV(return_1m_23_06_2016, 5)
RV1m_return1m_23_06_2016  <- RV(return_1m_23_06_2016, 1)

# Realised Volatility of 1 second returns in every hour, 
# 30 minutes, 15 minutes, 10 minutes, 5 minutes and 1 minute

RV1hr_return1s_23_06_2016 <- RV(return_1s_23_06_2016, 60)
RV30m_return1s_23_06_2016 <- RV(return_1s_23_06_2016, 30)
RV15m_return1s_23_06_2016 <- RV(return_1s_23_06_2016, 15)
RV10m_return1s_23_06_2016 <- RV(return_1s_23_06_2016, 10)
RV5m_return1s_23_06_2016  <- RV(return_1s_23_06_2016, 5)
RV1m_return1s_23_06_2016  <- RV(return_1s_23_06_2016, 1)

RV1hr_return1m_03_06_2016 <- RV(return_1m_03_06_2016, 60)
RV30m_return1m_03_06_2016 <- RV(return_1m_03_06_2016, 30)
RV15m_return1m_03_06_2016 <- RV(return_1m_03_06_2016, 15)
RV10m_return1m_03_06_2016 <- RV(return_1m_03_06_2016, 10)
RV5m_return1m_03_06_2016  <- RV(return_1m_03_06_2016, 5)
RV1m_return1m_03_06_2016  <- RV(return_1m_03_06_2016, 1)
RV1hr_return1s_03_06_2016 <- RV(return_1s_03_06_2016, 60)
RV30m_return1s_03_06_2016 <- RV(return_1s_03_06_2016, 30)
RV15m_return1s_03_06_2016 <- RV(return_1s_03_06_2016, 15)
RV10m_return1s_03_06_2016 <- RV(return_1s_03_06_2016, 10)
RV5m_return1s_03_06_2016  <- RV(return_1s_03_06_2016, 5)
RV1m_return1s_03_06_2016  <- RV(return_1s_03_06_2016, 1)

RV1hr_return1m_10_06_2016 <- RV(return_1m_10_06_2016, 60)
RV30m_return1m_10_06_2016 <- RV(return_1m_10_06_2016, 30)
RV15m_return1m_10_06_2016 <- RV(return_1m_10_06_2016, 15)
RV10m_return1m_10_06_2016 <- RV(return_1m_10_06_2016, 10)
RV5m_return1m_10_06_2016  <- RV(return_1m_10_06_2016, 5)
RV1m_return1m_10_06_2016  <- RV(return_1m_10_06_2016, 1)
RV1hr_return1s_10_06_2016 <- RV(return_1s_10_06_2016, 60)
RV30m_return1s_10_06_2016 <- RV(return_1s_10_06_2016, 30)
RV15m_return1s_10_06_2016 <- RV(return_1s_10_06_2016, 15)
RV10m_return1s_10_06_2016 <- RV(return_1s_10_06_2016, 10)
RV5m_return1s_10_06_2016  <- RV(return_1s_10_06_2016, 5)
RV1m_return1s_10_06_2016  <- RV(return_1s_10_06_2016, 1)

RV1hr_return1m_17_06_2016 <- RV(return_1m_17_06_2016, 60)
RV30m_return1m_17_06_2016 <- RV(return_1m_17_06_2016, 30)
RV15m_return1m_17_06_2016 <- RV(return_1m_17_06_2016, 15)
RV10m_return1m_17_06_2016 <- RV(return_1m_17_06_2016, 10)
RV5m_return1m_17_06_2016  <- RV(return_1m_17_06_2016, 5)
RV1m_return1m_17_06_2016  <- RV(return_1m_17_06_2016, 1)
RV1hr_return1s_17_06_2016 <- RV(return_1s_17_06_2016, 60)
RV30m_return1s_17_06_2016 <- RV(return_1s_17_06_2016, 30)
RV15m_return1s_17_06_2016 <- RV(return_1s_17_06_2016, 15)
RV10m_return1s_17_06_2016 <- RV(return_1s_17_06_2016, 10)
RV5m_return1s_17_06_2016  <- RV(return_1s_17_06_2016, 5)
RV1m_return1s_17_06_2016  <- RV(return_1s_17_06_2016, 1)


RV1hr_return1m_22_06_2016 <- RV(return_1m_22_06_2016, 60)
RV30m_return1m_22_06_2016 <- RV(return_1m_22_06_2016, 30)
RV15m_return1m_22_06_2016 <- RV(return_1m_22_06_2016, 15)
RV10m_return1m_22_06_2016 <- RV(return_1m_22_06_2016, 10)
RV5m_return1m_22_06_2016  <- RV(return_1m_22_06_2016, 5)
RV1m_return1m_22_06_2016  <- RV(return_1m_22_06_2016, 1)
RV1hr_return1s_22_06_2016 <- RV(return_1s_22_06_2016, 60)
RV30m_return1s_22_06_2016 <- RV(return_1s_22_06_2016, 30)
RV15m_return1s_22_06_2016 <- RV(return_1s_22_06_2016, 15)
RV10m_return1s_22_06_2016 <- RV(return_1s_22_06_2016, 10)
RV5m_return1s_22_06_2016  <- RV(return_1s_22_06_2016, 5)
RV1m_return1s_22_06_2016  <- RV(return_1s_22_06_2016, 1)

RV1hr_return1m_24_06_2016 <- RV(return_1m_24_06_2016, 60)
RV30m_return1m_24_06_2016 <- RV(return_1m_24_06_2016, 30)
RV15m_return1m_24_06_2016 <- RV(return_1m_24_06_2016, 15)
RV10m_return1m_24_06_2016 <- RV(return_1m_24_06_2016, 10)
RV5m_return1m_24_06_2016  <- RV(return_1m_24_06_2016, 5)
RV1m_return1m_24_06_2016  <- RV(return_1m_24_06_2016, 1)
RV1hr_return1s_24_06_2016 <- RV(return_1s_24_06_2016, 60)
RV30m_return1s_24_06_2016 <- RV(return_1s_24_06_2016, 30)
RV15m_return1s_24_06_2016 <- RV(return_1s_24_06_2016, 15)
RV10m_return1s_24_06_2016 <- RV(return_1s_24_06_2016, 10)
RV5m_return1s_24_06_2016  <- RV(return_1s_24_06_2016, 5)
RV1m_return1s_24_06_2016  <- RV(return_1s_24_06_2016, 1)