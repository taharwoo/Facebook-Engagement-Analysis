#Load packages
library("bitops")
library("RCurl")
library("rjson")
library("NLP")
library("tm")

#Load URL (Tesla FB Page Post - July 12, 2017)
url <- "https://graph.facebook.com/v2.10/10155485444567801/comments?access_token=EAACEdEose0cBADMHTfD75vlo4vHJaGyZAPTfM3m9mZBAzJMzZAWrvnYZANt7XEhaHaVdyd7HnokzSdA68AV7bEgoZCUie65yxKsgQUFnv6lpzsIAN6B5rxwn61ZALlTn5DhdJ9AgOa7DMT72d5sBuodZCbyF80Yjt854y5iQfwC8D6tt8EJr2z1ZBHIB5EbADP0ZD&pretty=0&limit=25&after=MTEZD"
d <- getURL(url)
j <- fromJSON(d)
comments <- sapply(j$data, function(j) {list(comment=j$message)})
