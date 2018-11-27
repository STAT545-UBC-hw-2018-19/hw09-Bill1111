#Create a histogram from the alphabetTable.csv output

#Import Dataset
alphabetTable <- read.csv("alphabetTable.csv")

library(ggplot2)

jpeg("alphaLetterPlot.jpg", width = 350, height = 350)

ggplot(alphabetTable, aes(x = letters, y = alphabetCount)) +
  geom_bar(fill = "#0073C2FF", stat = "identity") +
  xlab("Letters") + 
  ylab("Number of Words") + 
  ggtitle("Words Starting with Each Letter of the Alphabet")

ggsave("alphaLetterPlot.jpg")
