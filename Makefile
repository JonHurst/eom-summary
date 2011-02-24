all: xhtml

clean:
	rm -r  html notes.pdf notes.fo notes.ps

xhtml: html

html : notes.xml myxhtml.xsl
	xsltproc --output notes.airbus.xml --stringparam profile.condition "airbus" profile.xsl notes.xml
	xsltproc myxhtml.xsl notes.airbus.xml
	ln -fs ../style.css html/style.css

pdf: notes.pdf

notes.pdf: notes.fo images/alternates.svg
	fop -c fop.xconf  -fo notes.fo -pdf notes.pdf

notes.fo: notes.xml myfo.xsl
	xsltproc --output notes.airbus.xml --stringparam profile.condition "airbus" profile.xsl notes.xml
	xsltproc --stringparam profile.condition "airbus" myfo.xsl notes.airbus.xml >notes.fo
