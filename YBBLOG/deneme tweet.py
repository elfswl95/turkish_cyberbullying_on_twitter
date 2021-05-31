from itertools import count
from queue import Empty
import tweepy

consumer_key = "VflftCCaAPMpc6nF7ftu68L3P"
consumer_secret = "glKItKyLDZOJVw3RBErRW3Xp2kxBWQo2xaGFQC3LOU1jYIDxAI"
access_token = "1381581877-CI2dNdBv0S2vxDf1PnNZLNa3AyATgv16pBHj0HQ"
access_token_secret = "8mKQaA9gd4okzUcZfTW8QJoPxXOAOulDUvk3L6xY5RYOJ"
auth = tweepy.OAuthHandler(consumer_key,consumer_secret)
auth.set_access_token(access_token,access_token_secret)
api = tweepy.API(auth)
"""public_tweet=api.user_timeline('danlabilic',)
for tweet in public_tweet:
    print (tweet.text)
    """
collect = api.search(q='elonmusk')
    
for tweet in collect:
    print (f"{tweet.user.name}:{tweet.text}:{tweet.geo}")
        

