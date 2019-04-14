# The packages we need are : 
library(twitteR) 
library(httr) 

#Enter the info you had from Twitter when setting up your application:
## These information can be retreivedfrom here : https://developer.twitter.com/en/docs/basics/authentication/guides/access-tokens.html
## You need to set up a Twitter account if you don't have one, and create an application with that user account.

 api_key <- "your API key??"
 api_secret <- "your Secret key"??
 access_token <- "you Access Token??"
 access_token_secret <- "you Access Token Secret key??"
 
 #Now put these information into this function to setup your authentification:
 setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)
