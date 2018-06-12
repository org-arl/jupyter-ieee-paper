.PHONY: all clean

all: paper.pdf

%.tex: %.ipynb
	jupyter nbconvert --to latex --template ieee.tplx $<

%.pdf: %.tex
	pdflatex $*
	bibtex $*
	pdflatex $*
	pdflatex $*
	rm -f $*.aux $*.out $*.log $*.bbl $*.blg

paper.pdf: paper.tex references.bib
paper.tex: paper.ipynb

clean:
	rm -f *.aux *.out *.log *.bbl *.blg
	rm -f paper.pdf paper.tex
	rm -rf paper_files
