# The Analysis of High Frequency Data of FTSE 100.

The estimation of volatility using Brownian Motion from a Stochastic Process.

The model is followed the form of time-dependent Brownian Motion: 

<img src="https://render.githubusercontent.com/render/math?math=$dP_{t} = \mu_{t}dt %2B \sigma_{t}dB_{t}$">,

where <img src="https://render.githubusercontent.com/render/math?math=$P_{t}$"> denotes the log prices,

<img src="https://render.githubusercontent.com/render/math?math=$dP_{t}$"> is the return 

and <img src="https://render.githubusercontent.com/render/math?math=$\sigma_{t}$"> is Semi-martingale.


The time-dependent Brownian Motion model includes the volatility, in which volatility is provided by the

estimators when the microstructure noise has shown in the stock price, especially in bid and ask bounce.


The instantaneous volatility is calculated by Semi-martingale 

<img src="https://render.githubusercontent.com/render/math?math=$\sigma^{(p=2)}_{t}$">

where <img src="https://render.githubusercontent.com/render/math?math=$p=2$"> is a quadratic variation.


The instantaneous volatility is built from the time-dependent Brownian Motion model and the instantaneous

volatility has an estimator. The finding of Realised Volatility in high frequency data such as the bid and ask

prices from UK stock index, FTSE 100 in different time interval, the result gives that the realised volatility

is a good estimator of the instantaneous volatility.

