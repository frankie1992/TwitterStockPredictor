# Twitter Stock Predictor

The goal of this project is to provide a level of confidence whether a stock will increase or decrease in value based on twitter tweets

The program will get Tweets from stocks (X) for certain times ranges (Y). Then use sentiment analysis to categorize each tweet as positive, negative, neutral. from that we will create a data set and create a neural network using TensorFlow & Keras to train the model and output the model using TensorFlow Lite

The TensorFlow Lite model is going to be imported into a  Flutter app.
An end user is going to enter a stock (X) to look up and the app will get the latest Z tweets from stock X and create sentiment analysis output. Finally it wil be compared to the model that was generated.

The output will be “There's a X % chance the stock will go up/down” (encouraging people to take action)
