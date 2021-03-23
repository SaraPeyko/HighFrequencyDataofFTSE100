# Data Visualisation

# The plot of midpoint and return prices are produced by using the autoplot function in ggplot2 library.
# The midpoint and return prices are the data frame with time column which allows the quick plots. 
# The gridExtra library provides a number of functions to work with grid graphics and arranges multiple grid plots on page.

library(ggplot2)
library(gridExtra)

a1 <- autoplot(mid_1m_23_06_2016) + 
  labs(x ="time", title = "1m midpoint prices on 23/06/2016") + 
  theme(plot.title = element_text(hjust = 0.5))

a2 <- autoplot(return_1m_23_06_2016) +
  labs(x ="time", title = "1m return prices on 1m 23/06/2016") + 
  theme(plot.title = element_text(hjust = 0.5))

a3 <- autoplot(mid_1s_23_06_2016) +
  labs(x ="time", title = "1s midpoint prices on 23/06/2016") + 
  theme(plot.title = element_text(hjust = 0.5))

a4 <- autoplot(return_1s_23_06_2016) +
  labs(x ="time", title = "1s return prices on 23/06/2016") + 
  theme(plot.title = element_text(hjust = 0.5))

grid.arrange(a1, a2, a3, a4, ncol=2)


b1 <- autoplot(mid_1m_22_06_2016) +
  labs(x ="time", title = "1m midpoint prices on 22/06/2016") + 
  theme(plot.title = element_text(hjust = 0.5))

b2 <- autoplot(return_1m_22_06_2016) +
  labs(x ="time", title = "1m return prices on 22/06/2016") + 
  theme(plot.title = element_text(hjust = 0.5))

b3 <- autoplot(mid_1s_22_06_2016) +
  labs(x ="time", title = "1s midpoint prices on 22/06/2016") + 
  theme(plot.title = element_text(hjust = 0.5))
b4 <- autoplot(return_1s_22_06_2016) +
  labs(x ="time", title = "1s return prices on 22/06/2016") + 
  theme(plot.title = element_text(hjust = 0.5))

grid.arrange(b1, b2, b3, b4, ncol=2)


c1 <- autoplot(mid_1m_24_06_2016) +
  labs(x ="time", title = "1m midpoint prices on 24/06/2016") + 
  theme(plot.title = element_text(hjust = 0.5))

c2 <- autoplot(return_1m_24_06_2016) +
  labs(x ="time", title = "1m return prices on 24/06/2016") + 
  theme(plot.title = element_text(hjust = 0.5))

c3 <- autoplot(mid_1s_24_06_2016) +
  labs(x ="time", title = "1m midpoint prices on 24/06/2016") + 
  theme(plot.title = element_text(hjust = 0.5))

c4 <- autoplot(return_1s_24_06_2016) +
  labs(x ="time", title = "1s return prices on 24/06/2016") + 
  theme(plot.title = element_text(hjust = 0.5))

grid.arrange(c1, c2, c3, c4, ncol=2)
