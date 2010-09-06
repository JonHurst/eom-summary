all: xhtml 

clean:
	rm -r  html notes.pdf notes.fo notes.ps

xhtml: html

html : notes.xml myxhtml.xsl
	xsltproc myxhtml.xsl notes.xml 
	ln -fs ../style.css html/style.css

pdf: notes.pdf

notes.pdf: notes.fo
	fop -c fop.xconf  -fo notes.fo -pdf notes.pdf

notes.fo: notes.xml myfo.xsl
	xsltproc myfo.xsl notes.xml >notes.fo
