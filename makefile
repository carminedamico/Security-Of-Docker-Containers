all: clean check compile clean view

compile:
	pdflatex report.tex
	pdflatex report.tex

view:
	open report.pdf &

clean:
	rm -f report.aux report.log report.out report.pdf report.toc 

check:
	aspell -c report.tex -l en_GB
