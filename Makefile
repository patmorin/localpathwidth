ipefigs=$(wildcard figs/*.ipe)
figs=$(ipefigs:.ipe=.pdf)

texs=$(wildcard *.tex)
pdfs=$(texs:.tex=.pdf)

all: $(pdfs)

%.pdf : %.tex $(figs)
	(cd figs; make)
	latexmk -pdf $<

