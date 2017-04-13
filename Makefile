# Makefile for Junior Spring IW Report

FILE = thesis 
SECTIONS = sections

all:
	pdflatex $(FILE).tex
view:
	open $(FILE).pdf
clean:
	rm -f *.aux *.log *.out $(SECTIONS)/*.tex.bak
spellcheck:
	find ./$(SECTIONS)/*.tex -exec aspell -t -c '{}' \;
