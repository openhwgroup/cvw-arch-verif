all: ctp.pdf ctp.html

ctp.pdf: ctp.adoc
	asciidoctor-pdf ctp.adoc

ctp.html: ctp.adoc
	asciidoctor ctp.adoc

clean:
	rm -f ctp.pdf ctp.html
