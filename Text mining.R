####################
#########################
Install
install.packages("tm")  # for text mining
install.packages(c("SnowballC","textstem")) # for text stemming
install.packages("wordcloud") # word-cloud generator 
install.packages("RColorBrewer") # color palettes

library('tm')
library("SnowballC")
library("wordcloud")
library("RColorBrewer")
library('textstem')
# Importing apple reviews data

#apple <- read.csv("/Volumes/Data/Course Content/DS content/Text Mining/apple.txt", sep="")
# Importing apple reviews data
x <- as.character(amazon_reviews)
x <- iconv(x, "UTF-8") #Unicode Transformation Format. The '8' means it uses 8-bit blocks to represent a character


# Load the data as a corpus
x <- Corpus(VectorSource(x))
inspect(x[1])
# Convert the text to lower case
x1 <- tm_map(x, tolower)
inspect(x1[1])
# Remove numbers
x1 <- tm_map(x1, removeNumbers)
# Remove punctuations
x1 <- tm_map(x1, removePunctuation)

# Remove english common stopwords
x1 <- tm_map(x1, removeWords, stopwords('english'))
# Remove your own stop word
# specify your stopwords as a character vector
x1 <- tm_map(x1, removeWords, c("apple", "mac","the","will")) 
#striping white spaces
From Srinivas ExcelR to Everyone:  09:35 PM
x1 <- tm_map(x1, stripWhitespace)
inspect(x1[1])
# Text stemming
x1<-lemmatize_words(x1)
#x1 <- tm_map(x1, stemDocument)

# Term document matrix 
# converting unstructured data to structured format using TDM

tdm <- TermDocumentMatrix(x1)
tdm <- as.matrix(tdm)
tdm
#Frequency
v <- sort(rowSums(tdm),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
head(d, 10)

# Bar plot
w <- rowSums(tdm)
w_sub <- subset(w, w >= 10)
barplot(w_sub, las=3, col = rainbow(20))

# lOADING +VE AND -VE dictonaries
pos.words = scan(file.choose(), what="character", comment.char=";")	# read-in positive-words.txt
neg.words = scan(file.choose(), what="character", comment.char=";") 	# read-in negative-words.txt
pos.words = c(pos.words,"wow", "kudos", "hurray") # including our own positive words to the existing list

# Positive wordcloud
pos.matches = match(names(w), c(pos.words))
pos.matches = !is.na(pos.matches)
freq_pos <- w[pos.matches]
p_names <- names(freq_pos)

wordcloud(p_names,freq_pos,scale=c(3.5,.5),colors = rainbow(20))

# Negative wordcloud
neg.matches = match(names(w), c(neg.words))
neg.matches = !is.na(neg.matches)
freq_neg <- w[neg.matches]
n_names <- names(freq_neg)

wordcloud(n_names,freq_neg,scale=c(3.5,.5),colors = brewer.pal(8,"Dark2"))

#Association between words
tdm <- TermDocumentMatrix(x1)
findAssocs(tdm, c("problems"),corlimit = 0.3)

