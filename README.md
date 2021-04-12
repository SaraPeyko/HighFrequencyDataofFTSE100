# The Analysis of High Frequency Data of FTSE 100.

The estimation of volatility using Brownian Motion from a Stochastic Process.

The model is followed the form of time-dependent Brownian Motion: 

![Capture](https://user-images.githubusercontent.com/24828971/114424587-2c04e600-9bb0-11eb-9eaf-1b4310983db8.JPG)

where ![Capture1](https://user-images.githubusercontent.com/24828971/114424757-5656a380-9bb0-11eb-84bb-99896f3d8d5b.JPG) denotes the log prices,

![Capture2](https://user-images.githubusercontent.com/24828971/114424894-74240880-9bb0-11eb-903b-156d4509ac24.JPG) is the return 

and ![Capture3](https://user-images.githubusercontent.com/24828971/114424990-8a31c900-9bb0-11eb-8012-2c10a7ae2f7d.JPG) is Semi-martingale.

The time-dependent Brownian Motion model includes the volatility, in which volatility is provided by the

estimators when the microstructure noise has shown in the stock price, especially in bid and ask bounce.

The instantaneous volatility is calculated by Semi-martingale 

![Capture4](https://user-images.githubusercontent.com/24828971/114425154-b8170d80-9bb0-11eb-9255-d90314a6ecfa.JPG)

where ![Capture5](https://user-images.githubusercontent.com/24828971/114425248-cc5b0a80-9bb0-11eb-8a20-21d33a6b4f03.JPG) is a quadratic variation.

The instantaneous volatility is built from the time-dependent Brownian Motion model and the instantaneous
volatility has an estimator. 

The finding of Realised Volatility in high frequency data such as the bid and ask
prices from UK stock index, FTSE 100 in different time interval, the result gives that the realised volatility
is a good estimator of the instantaneous volatility.

