all: xhtml

clean:
	rm -r  html notes.pdf notes.fo notes.ps

xhtml: html


notes.boeing.xml: notes.xml profile.xsl
	xsltproc --output notes.boeing.xml --stringparam profile.condition "boeing" profile.xsl notes.xml

notes.airbus.xml: notes.xml profile.xsl
	xsltproc --output notes.airbus.xml --stringparam profile.condition "airbus" profile.xsl notes.xml

boeing : notes.boeing.xml myxhtml.xsl myfo.xsl
	xsltproc myxhtml.xsl notes.boeing.xml
	ln -fs ../style.css html/style.css
	xsltproc myfo.xsl notes.boeing.xml >notes.fo
	fop -c fop.xconf  -fo notes.fo -pdf notes.pdf

html : notes.airbus.xml myxhtml.xsl
	xsltproc changebars.xsl notes.airbus.xml
	ln -fs ../style.css html/style.css

pdf: notes.pdf

notes.pdf: notes.fo fop.xconf images/alternates.svg
	fop -c fop.xconf  -fo notes.fo -pdf notes.pdf

notes.fo: notes.airbus.xml myfo.xsl
	xsltproc myfo.xsl notes.airbus.xml >notes.fo
