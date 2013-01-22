LATEX=$(HOME)/texlive/2012/bin/x86_64-linux/pdflatex
BIBTEX=$(HOME)/texlive/2012/bin/x86_64-linux/bibtex

all: makepaper

makepaper:
	$(LATEX) paper.tex
	$(LATEX) paper.tex
	$(BIBTEX) paper
	$(LATEX) paper.tex
	$(LATEX) paper.tex

makereport:
	$(LATEX) report.tex
	$(BIBTEX) report
	$(BIBTEX) report
	$(LATEX) report.tex
clean:
	echo "Cleaning up."
	if [ -f report.log ]; then rm report.log; fi
	if [ -f report.aux ]; then rm report.aux; fi
	if [ -f report.bbl ]; then rm report.bbl; fi
	if [ -f report.blg ]; then rm report.blg; fi
	if [ -f report.dvi ]; then rm report.dvi; fi
	if [ -f report.pdf ]; then rm report.pdf; fi
	if [ -f paper.log ]; then rm paper.log; fi
	if [ -f paper.aux ]; then rm paper.aux; fi
	if [ -f paper.bbl ]; then rm paper.bbl; fi
	if [ -f paper.blg ]; then rm paper.blg; fi
	if [ -f paper.dvi ]; then rm paper.dvi; fi
	if [ -f paper.pdf ]; then rm paper.pdf; fi
