all: report.html

clean:
	rm -f words.txt alphabetTable.csv alphaLetterPlot.jpg histogram.tsv alphaReport.rmd histogram.png report.md report.html

report.html: report.rmd histogram.tsv histogram.png
	Rscript -e 'rmarkdown::render("$<")'
	
words.txt:
	Rscript -e 'download.file("https://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
#Why is the other word.txt at the bottom?

alphabetTable.csv: alphabetTable.r words.txt
	Rscript $<
#this will create the alphabetTable.csv file

alphaLetterPlot.jpg: alphabetHist.R alphabetTable.csv
	Rscript $<
#this will create the alphaLetterPlot with the alphabetHist.R code

alphareport.html: alphaReport.rmd alphabetTable.csv alphaLetterPlot.jpg
	Rscript -e 'rmarkdown::render("$<")'
#This will give the final report

histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

histogram.tsv: histogram.r words.txt
	Rscript $<

words.txt: /usr/share/dict/words
	cp $< $@

# words.txt:
#	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
