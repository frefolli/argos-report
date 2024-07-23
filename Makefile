REPORT=report
SLIDES=slides

@all: ${REPORT}.pdf ${SLIDES}.pdf

${REPORT}.pdf: ${REPORT}.tex quotes.bib
	pdflatex ${REPORT}.tex
	bibtex ${REPORT}.aux
	pdflatex ${REPORT}.tex

${SLIDES}.pdf: ${SLIDES}.tex
	pdflatex ${SLIDES}.tex
	pdflatex ${SLIDES}.tex

clean:
	rm -rf *.idx ${REPORT}.pdf ${SLIDES}.pdf *-blx.bib *.aux *.log *.run.xml *.toc *.ilg *.ind *.bbl  *.blg *.out *.nav *.snm
