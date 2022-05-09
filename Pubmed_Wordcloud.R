library(devtools) #necessary libraries
#install_github("felixfan/PubMedWordcloud") # from GitHub
library(PubMedWordcloud)

#read in the data (txt file) as character type
#x <- scan("Downloads/big-staph-set-with-ai-terms.txt", what = "character")
x <- scan("Downloads/big-staph-set-1yr.txt", what = "character")
#get and clean abstracts
abstracts = getAbstracts(x)
cleanAbs = cleanAbstracts(abstracts)
#make the wordcloud plot
plotWordCloud(cleanAbs,min.freq = 2, scale = c(2, 0.3))




