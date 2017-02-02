.SUFFIXES: .tex .dvi .pdf

all: main.pdf

clean:
	rm -rf *.aux *.dvi *.log
open:all
	xdg-open *.pdf
.tex.dvi:
	platex -kanji=utf8 $<

.dvi.pdf:
	dvipdfmx $<

sample.pdf: main.tex main.dvi
