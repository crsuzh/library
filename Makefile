TEXNAME=crsbib
BIBNAME=crs
  
all:
	cat ${BIBNAME}.bib | grep -v howpublished > ${BIBNAME}.tidy.bib
	pdflatex $(TEXNAME)
	bibtex   $(TEXNAME)
	pdflatex $(TEXNAME)
	pdflatex $(TEXNAME)
clean:
	rm -f *.bcf *.run.xml .aux *.bbl *.blg *.log *.dvi *.ps *.lot *.lof *.toc *.out *.bak *.idx *~
