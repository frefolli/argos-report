@all: main.pdf

main.pdf: main.tex quotes.bib
	pdflatex main.tex
	bibtex main.aux
	pdflatex main.tex

rel.pdf: main.pdf
	cp main.pdf rel.pdf

lvim:
	lvim main.tex

send: main.pdf
	mv main.pdf ~/Desktop/argos-report.pdf

clean:
	rm -rf *.idx main.pdf *-blx.bib *.aux *.log *.run.xml *.toc *.ilg *.ind
