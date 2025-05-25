all:
	pdflatex resume.tex

clean:
	rm -f *.aux *.log *.out *.toc *.pdf *.synctex.gz *.fdb_latexmk *.fls
