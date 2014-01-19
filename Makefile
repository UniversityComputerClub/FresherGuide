#Makefile for Fresher Guide

NAME=fresher_guide
TEX=pdflatex

all : 
	make clean
	make $(NAME).pdf

fresher_guide.pdf : fresher_guide.tex
	rm -f *.aux *.bbl *.log *.toc *.lof *.blg *.lot

	$(TEX) -shell-escape $(NAME)
	#bibtex $(NAME)
	$(TEX) --shell-escape $(NAME)
	$(TEX) --shell-escape $(NAME)
	#bibtex $(NAME)
	$(TEX) --shell-escape $(NAME)
	$(TEX) --shell-escape $(NAME)


	rm -f *.bbl *.log *.toc *.lof *.blg *.lot


clean : 
	rm -f $(NAME).pdf
