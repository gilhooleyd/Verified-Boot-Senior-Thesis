# Makefile for Junior Spring IW Report

FILE = report
SECTIONS = sections

all:
	pdflatex $(FILE).tex
	pdflatex $(FILE).tex
view:
	open $(FILE).pdf
clean:
	rm -f *.aux *.log *.out $(SECTIONS)/*.tex.bak
spellcheck:
	find ./$(SECTIONS)/*.tex -exec aspell -t -c '{}' \;
