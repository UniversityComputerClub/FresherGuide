#Makefile for Fresher Guide

NAME=fresher_guide

all : 
	make clean
	make $(NAME).pdf

fresher_guide.pdf : fresher_guide.tex
	rm -f *.aux *.bbl *.log *.toc *.lof *.blg *.lot

	pdflatex -shell-escape $(NAME)
	bibtex $(NAME)
	pdflatex --shell-escape $(NAME)
	pdflatex --shell-escape $(NAME)
	bibtex $(NAME)
	pdflatex --shell-escape $(NAME)
	pdflatex --shell-escape $(NAME)


	rm -f *.bbl *.log *.toc *.lof *.blg *.lot


clean : 
	rm -f $(NAME).pdf
