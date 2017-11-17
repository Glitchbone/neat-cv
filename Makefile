LATEX_ENGINE = xelatex
TEMPLATE = tpl.tex
CV = cv
SOURCE = $(CV).md
TARGET = $(CV).pdf
OPTIONS = --latex-engine=$(LATEX_ENGINE) --template=$(TEMPLATE)

$(TARGET): $(SOURCE) $(TEMPLATE)
	pandoc $< -o $@ $(OPTIONS)

.PHONY: example clean

example: example-$(SOURCE)
	pandoc $< -o $@-$(TARGET) $(OPTIONS)

clean:
	rm -f $(TARGET)
