#Create a histogram from the alphabetTable.csv output

#Import Dataset
alphabetTable <- read.csv("~/Documents/UBC/Term 7 - Sept. 2018/STAT 545/Homework/Hmk9/hw09-Bill1111/alphabetTable.csv", sep="")

names(alphabetTable)

alphabetTable %>% 
  ggplot(aes(letters, alphabetCount)) +
  geom_histogram()


ggplot(alphabetTable, aes(x = letters, y = alphabetCount)) +
  geom_bar(fill = "#0073C2FF", stat = "identity") +
  xlab("Letters") + 
  ylab("Number of Words") + 
  ggtitle("Number of Words Starting with Each Letter of the Alphabet")




+ 
  theme_pubclean()
