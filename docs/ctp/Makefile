NAME = ctp
ADOCS = $(wildcard *.adoc)

all: $(NAME).pdf $(NAME).html

$(NAME).pdf: $(ADOCS)
	asciidoctor-pdf $(NAME).adoc

$(NAME).html: $(ADOCS)
	asciidoctor $(NAME).adoc

clean:
	rm -f $(NAME).pdf $(NAME).html
