install.packages("twitteR")
install.packages("ROAuth")
install.packages("base64enc")
install.packages("httpuv")
library(twitteR)
library(ROAuth)
library(base64enc)
library(httpuv)
### https://apps.twitter.com/

cred <- OAuthFactory$new(consumerKey='CXKmeDwXdMGsKaMujsw79hSKJ',
                         consumerSecret='Ugy4KvgF8uChBHD1uRgiEgMbB9is8BPYByvfKwKqvbkVofsJx0',
                         requestURL='https://api.twitter.com/oauth/request_token',
                         accessURL='https://api.twitter.com/oauth/access_token',
                         authURL='https://api.twitter.com/oauth/authorize')

#save(cred, file="twitter authentication.Rdata")
#load("twitter authentication.Rdata")

setup_twitter_oauth("CXKmeDwXdMGsKaMujsw79hSKJ", 
                    "Ugy4KvgF8uChBHD1uRgiEgMbB9is8BPYByvfKwKqvbkVofsJx0",
                    "2722336712-LGzGXVqdG8AHUMLUH4Isi0VV8NP17D9Z0HWTUO5", # Access token
                    "uvtSXKKqY61JR0T3UB2lc32u7lSm4ooKpTphdggY5yM46")  # Access token secret key

Tweets <- userTimeline('narendramodi', n = 1000)

TweetsDF <- twListToDF(Tweets)
write.csv(TweetsDF, "Tweets_sarf.csv")

###Search with a key word

word_tweets<- searchTwitter('corona', n=100, lang="en", resultType = "recent")
TweetsDF <- twListToDF(word_tweets)