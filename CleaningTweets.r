Tun_Tweets <- searchTwitter("#Tunisia", n=1000, lang = "en")
head(Tun_Tweets)

# transform the  tweets into a data frame format
tweets_df = twListToDF(Tun_Tweets)
str(tweets_df)
library(tm)

mycorpus = Corpus(VectorSource(tweets_df))
str(mycorpus)

#Removing extra white-spaces
mycorpus1 = tm_map(mycorpus, stripWhitespace)

#converting text to lower case
mycorpus2 = tm_map(mycorpus1, tolower)

#removing  stopwords
mycorpus3 = tm_map(mycorpus2, removeWords, stopwords("english"))  

#removing punctuation symbols
mycorpus4 = tm_map(mycorpus3, removePunctuation)

#removing numbers
mycorpus5 = tm_map(mycorpus4, removeNumbers)
