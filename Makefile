all:
	cd src && \
	pdflatex satzung.tex
	cp src/satzung.pdf satzung.pdf

clean:
	rm -f src/*.aux
	rm -f src/*.log
	rm -f src/*.pdf
	rm -f src/*.out
	rm -f src/*.toc
	rm -f src/*.gz
	rm -f *.log
	rm -f *.pdf
