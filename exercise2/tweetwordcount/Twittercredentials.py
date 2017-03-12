import tweepy

consumer_key = "81jopBkezcCBaCHXKI6eYviHb";
#eg: consumer_key = "YisfFjiodKtojtUvW4MSEcPm";


consumer_secret = "mTtWOKdRaZNRZAw8C4JBUFT43q4w0zi7jZNPLsbdWpYFGfDSuH";
#eg: consumer_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token = "32722838-Cn8ex52SbV9eO82cbDeRCleaAuHqiviWr9v7xMY57";
#eg: access_token = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token_secret = "JjarwDyiMj1kEIL9mICh9IZ7btwO7gVeTGsA53XmcgJuE";
#eg: access_token_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)



