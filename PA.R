

suppressPackageStartupMessages(c(
  library(shinythemes),
  library(shiny),
  library(tm),
  library(stringr),
  library(markdown),
  library(stylo)))

setwd("C:/Users/PA030312/Documents/Joe/Data Science/R/Coursera Data Science Capstone/Final Project/NWP4")


quadgram <- readRDS("./data/ng4d.RData")
trigram <- readRDS("./data/ng3d.RData")
bigram <- readRDS("./data/ng2d.RData")


Predict <- function(x) {
  xclean <- removeNumbers(removePunctuation(tolower(x)))
  xs <- strsplit(xclean, " ")[[1]]
  
  if (length(xs)>= 3) {
    xs <- tail(xs,3)
    if (identical(character(0),head(quadgram[quadgram$unigram == xs[1] & quadgram$bigram == xs[2] & quadgram$trigram == xs[3], 4],1))){
      Predict(paste(xs[2],xs[3],sep=" "))
    }
    else {mesg <<- ""; head(quadgram[quadgram$unigram == xs[1] & quadgram$bigram == xs[2] & quadgram$trigram == xs[3], 4],1)}
  }
  else if (length(xs) == 2){
    xs <- tail(xs,2)
    if (identical(character(0),head(trigram[trigram$unigram == xs[1] & trigram$bigram == xs[2], 3],1))) {
      Predict(xs[2])
    }
    else {mesg<<- ""; head(trigram[trigram$unigram == xs[1] & trigram$bigram == xs[2], 3],1)}
  }
  else if (length(xs) == 1){
    xs <- tail(xs,1)
    if (identical(character(0),head(bigram[bigram$unigram == xs[1], 2],1))) {mesg<<-""; head("",1)}
    else {mesg <<- ""; head(bigram[bigram$unigram == xs[1],2],1)}
  }
}


