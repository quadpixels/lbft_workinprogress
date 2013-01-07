LATEX_DIRECTORY=$(HOME)/texlive/2012/bin/x86_64-linux/
LATEX=$(LATEX_DIRECTORY)/pdflatex
BIBTEX=$(LATEX_DIRECTORY)/bibtex

all: makereport

makereport:
	$(LATEX) report.tex
	$(BIBTEX) report
	$(BIBTEX) report
	$(LATEX) report.tex
clean:
	if [ -f report.log ]; then rm report.log; fi
	if [ -f report.aux ]; then rm report.aux; fi
	if [ -f report.bbl ]; then rm report.bbl; fi
	if [ -f report.blg ]; then rm report.blg; fi
	if [ -f report.dvi ]; then rm report.dvi; fi
	if [ -f report.pdf ]; then rm report.pdf; fi
