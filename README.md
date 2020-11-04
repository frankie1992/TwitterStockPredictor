# Twitter Stock Predictor

Get Tweets from stocks (X) from times (Y) -> use sentiment analysis to categorize each tweet as positive, negative, neutral -> get stock prices (from stocks X) from times (Y) -> create dataset using sentiment output and stock prices

Create neural network using TensorFlow & Keras to train model -> output model using TensorFlow Lite

Import TensorFlow Lite model into Flutter app -> when user searches stock quote -> get latest Z tweets from stock X, create sentiment analysis output -> compare this data to model to get prediction -> output will be “There's a X % chance the stock will go up/down” (encouraging people to take action)
