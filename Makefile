LATEX_DIRECTORY=$(HOME)/texlive/2012/bin/x86_64-linux/
LATEX=$(LATEX_DIRECTORY)/xelatex
BIBTEX=$(LATEX_DIRECTORY)/bibtex

all: makereport

makereport:
	$(LATEX) report.tex
	$(BIBTEX) report
	$(LATEX) report.tex
