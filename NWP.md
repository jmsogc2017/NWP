
Coursera Data Science Capstone: Final Course Project
========================================================

NWP - Next Word Predictor

Joe Sopko

Feb 13, 2018


Next Word Predcitor (NWP) - Overview 
========================================================

This app predicts the next word as a user types a sentence, like smart phone keyboards today, using Swiftkey tech.

- A large corpus of blog, news and twitter data was loaded and analyzed 
- N-grams extracted from the corpus and used for building the predictive model 
- Created an algorithm for predicting the next word given one or more words as input using NLP
- Various methods of improving the prediction accuracy and speed were explored

NWP App link -  https://jmsogc17.shinyapps.io/NWP4/

GitHub Code Link - 


Model - Cleaning Process
========================================================

- A subset of the original data was sampled from the three sources (blogs,twitter and news) which is then merged into one.

- Next, data cleaning is done by conversion to lowercase, strip white space, and removing punctuation and numbers.

- The corresponding n-grams are then created (Quadgram,Trigram and Bigram).

- Next, the term-count tables are extracted from the N-Grams and sorted according to the frequency in descending order.

- Lastly, the n-gram objects are saved as R-Compressed data files (.RData files).


Algorithm - Build Process
========================================================

- Utilized N-gram approach with Katz back-off algorithm & reduced size of model by dropping least frequent N-grams
- User input words are cleaned in the similar way as before prior to prediction of the next word.
- For prediction of the next word, Quadgram is first used (first three words of Quadgram are the last three words of user provided input).
- If no Quadgram is found, back off to Trigram (first two words of Trigram are the last two words of the input).
- If no Trigram is found, back off to Bigram (first word of Bigram is the last word of the input)
- If no Bigram is found, back off to the most common word with highest frequency 


Shiny App Interface - Overview
========================================================

- Provides a text input box for user to type a word/phrase

- Detects words typed and predicts the next word reactively

- Iterates from longest N-gram to shortest

- Predicts using the longest, most frequent, matching N-gram

NWP App link -  https://jmsogc17.shinyapps.io/NWP4/



App Performance & Links
========================================================

- The average response time is under 5 seconds

- Application memory usage less than 150 MB

- NWP App link here: https://jmsogc17.shinyapps.io/NWP4/

- Github link here: 
