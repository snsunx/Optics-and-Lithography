LATEX = pdflatex
FLAGS = -shell-escape

%: %.tex
	$(LATEX) $(FLAGS) $^
