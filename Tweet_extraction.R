#install.packages("twitteR") #installs TwitteR library (twitteR) #loads TwitteR
library(twitteR)
library(rtweet)
library(tidyverse)
install.packages('tidyverse')
install.packages("httk")
install.packages("httr")
install.packages("httpuv")


consumer_key = 'DZyJyRLm7kdjysNntzjxFVY0p'
consumer_secret = 'Xfrm0ZFTYvlUME7doJmuOhoG9Hm9uS5eJYeprpSvAOhdGMvWFQ'
access_token = '2194197938-ISsKNRs9oDSMFOxtHcDERWBtZeulyDjdNJWOVZk'
access_token_secret = 'mmnJ36QtVsMVRUmp1UQ8q1IwVTXsgjEvocyUtrP076hsb'


appname <- "Predictive_Digital_Bot"
token <- create_token(app =appname, consumer_key, consumer_secret,set_renv = TRUE)


lrt1 <- lapply(
  c("levothyroxine"),
  search_tweets,
  n = 5000, lang = "en"
)

rt1 <- do_call_rbind(lrt1)
rt1$searchTerm <- 'Levothyroxine'
rt1$disease <- 'Cancer'
#View(rt1)

################

lrt2 <- lapply(
  c("revlimid"),
  search_tweets,
  n = 5000, lang = "en"
)

rt2 <- do_call_rbind(lrt2)
rt2$searchTerm <- 'revlimid'
rt2$disease <- 'Cancer'
#View(rt2)

#####################

lrt3 <- lapply(
  c("Rituxan"),
  search_tweets,
  n = 5000, lang = "en"
)

rt3 <- do_call_rbind(lrt3)
rt3$searchTerm <- 'Rituxan'
rt3$disease	<- 'Cancer'
#View(rt3)

###############################

lrt4 <- lapply(
  c("Herceptin"),
  search_tweets,
  n = 5000, lang = "en"
)


rt4 <- do_call_rbind(lrt4)
rt4$searchTerm <- 'Herceptin'
rt4$disease	<- 'Cancer'
#View(rt4)

###############################

lrt5 <- lapply(
  c("Avastin"),
  search_tweets,
  n = 5000, lang = "en"
)

rt5 <- do_call_rbind(lrt5)
rt5$searchTerm <- 'Avastin'
rt5$disease <- 'Cancer'
#View(rt5)

###############################
lrt6 <- lapply(
  c("Losartan"),
  search_tweets,
  n = 5000, lang = "en"
)

rt6 <- do_call_rbind(lrt6)
rt6$searchTerm <- 'Losartan'
rt6$disease	<- 'High_Bp'
#View(rt6)

###############################
lrt7 <- lapply(
  c("Lisinopril"),
  search_tweets,
  n = 5000, lang = "en"
)

rt7 <- do_call_rbind(lrt7)
rt7$searchTerm <- 'Lisinopril'
rt7$disease <- 'High_Bp'
#View(rt7)

###############################
lrt8 <- lapply(
  c("Amlodipine"),
  search_tweets,
  n = 5000, lang = "en"
)

rt8 <- do_call_rbind(lrt8)
rt8$searchTerm <- 'Amlodipine'
rt8$disease <- 'High_Bp'
#View(rt8)


###############################
lrt9 <- lapply(
  c("Lasix"),
  search_tweets,
  n = 5000, lang = "en"
)

rt9 <- do_call_rbind(lrt9)
rt9$searchTerm <- 'Lasix'
rt9$disease <- 'High_Bp'
#View(rt9)

###############################
lrt10 <- lapply(
  c("Carvedilol"),
  search_tweets,
  n = 5000, lang = "en"
)

rt10 <- do_call_rbind(lrt10)
rt10$searchTerm <- 'Carvedilol'
rt10$disease <- 'High_Bp'
#View(rt10)

###############################
lrt11 <- lapply(
  c("Humalog"),
  search_tweets,
  n = 5000, lang = "en"
)

rt11 <- do_call_rbind(lrt11)
rt11$searchTerm <- 'Humalog'
rt11$disease <- 'Diabetes'
#View(rt11)

###############################
lrt12 <- lapply(
  c("Levemir"),
  search_tweets,
  n = 5000, lang = "en"
)

rt12 <- do_call_rbind(lrt12)
rt12$searchTerm <- 'Levemir'
rt12$disease <- 'Diabetes'
#View(rt12)

###############################
lrt13 <- lapply(
  c("Lantus"),
  search_tweets,
  n = 5000, lang = "en"
)

rt13 <- do_call_rbind(lrt13)
rt13$searchTerm <- 'Lantus'
rt13$disease <- 'Diabetes'
#View(rt13)

###############################
lrt14 <- lapply(
  c("Canagliflozin"),
  search_tweets,
  n = 5000, lang = "en"
)

rt14 <- do_call_rbind(lrt14)
rt14$searchTerm <- 'Canagliflozin'
rt14$disease <- 'Diabetes'
#View(rt14)

###############################
lrt15 <- lapply(
  c("Atorvastatin"),
  search_tweets,
  n = 5000, lang = "en"
)

rt15 <- do_call_rbind(lrt15)
rt15$searchTerm <- 'Atorvastatin'
rt15$disease <- 'Diabetes'
#View(rt15)


#######combining all the tweets

rt <- rbind(rt1, rt2, rt3, rt4, rt5, rt6, rt7, rt8, rt9, rt10, rt11, rt12, rt13, rt14, rt15)
write_as_csv(rt,'D:/Sem 2/IDS 594/Project/Tweet_extraction.csv')
