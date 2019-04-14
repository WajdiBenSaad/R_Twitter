
#####Term Document Matrix:
tdm <- TermDocumentMatrix(myCorpus, control = list(wordLengths = c(1, Inf)))

tdm

idx <- which(dimnames(tdm)$Terms %in% c("r", "data", "mining"))
as.matrix(tdm[idx, 21:30])

# inspect frequent words
(freq.terms <- findFreqTerms(tdm, lowfreq = 20))

term.freq <- rowSums(as.matrix(tdm))
term.freq <- subset(term.freq, term.freq >= 20)
df <- data.frame(term = names(term.freq), freq = term.freq)

##Plotting:

library(ggplot2)
ggplot(df, aes(x=term, y=freq)) + geom_bar(stat="identity") +
  xlab("Terms") + ylab("Count") + coord_flip() +
  theme(axis.text=element_text(size=7))

