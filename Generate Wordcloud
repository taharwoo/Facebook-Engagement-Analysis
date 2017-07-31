#Generate Wordcloud
install.packages("RColorBrewer")
install.packages("wordcloud")
library("RColorBrewer")
library("wordcloud")
wordcloud(words = my_data$word, freq = my_data$freq, min.freq = 1, max.words=100, random.order=FALSE, rot.per=0.35, colors=brewer.pal(8, "Dark2"))
