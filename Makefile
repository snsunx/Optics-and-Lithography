PDF = pdflatex
BIB = bibtex
FLAGS = -shell-escape

%: %.tex
	$(PDF) $(FLAGS) $<
	if [ -e $(addsuffix .bib,$@) ]; \
	then \
		$(BIB) $@ && \
		$(PDF) $(FLAGS) $< && \
		$(PDF) $(FLAGS) $<; \
	fi
