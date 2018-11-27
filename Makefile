all: report.html alphaReport.html

clean:
	rm -f words.txt alphabetTable.csv alphaLetterPlot.jpg histogram.tsv histogram.png report.md report.html

report.html: report.rmd histogram.tsv histogram.png
	Rscript -e 'rmarkdown::render("$<")'

histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

histogram.tsv: histogram.r words.txt
	Rscript $<

alphaReport.html: alphaReport.rmd alphabetTable.csv alphaLetterPlot.jpg
	Rscript -e 'rmarkdown::render("$<")'
#This will give the final report

alphaLetterPlot.jpg: alphabetHist.R alphabetTable.csv
	Rscript $<
#this will create the alphaLetterPlot with the alphabetHist.R code

alphabetTable.csv: alphabetTable.r words.txt
	Rscript $<
#this will create the alphabetTable.csv file

words.txt:
	Rscript -e 'download.file("https://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
#Why is the other word.txt at the bottom?
