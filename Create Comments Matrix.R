#Create Matrix
my_tdm <- TermDocumentMatrix(my_cleaned_corpus)
m <- as.matrix(my_tdm)
View(m)
words <- sort(rowSums(m), decreasing = TRUE)
my_data <- data.frame(word = names(words),freq=words)
View(my_data)
my_data
