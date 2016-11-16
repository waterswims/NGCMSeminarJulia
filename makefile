all:
	pdflatex pres.tex; bibtex pres; pdflatex pres.tex; pdflatex pres.tex

clean:
	cd Chapters; rm *.aux *.bbl *.blg *.lof *.log *.lot *.out *.toc
