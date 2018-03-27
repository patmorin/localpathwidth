ipefigs=$(wildcard figs/*.ipe)
figs=$(ipefigs:.ipe=.pdf)

texs=$(wildcard *.tex)
pdfs=$(texs:.tex=.pdf)

all: LocalPathwidth.pdf

%.pdf : %.tex $(figs)
	(cd figs; make)
	latexmk -pdf $<

install : LocalPathwidth.pdf
	scp $< cglab.ca:public_html/publications/drafts/localpathwidth/
