<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/docbook.xsl"/>
<xsl:param name="fop.extensions" select="0"></xsl:param>
<xsl:param name="fop1.extensions" select="1"></xsl:param>
<xsl:param name="draft.mode" select="'no'"/>
<xsl:param name="paper.type" select="'A5'"/>


<xsl:param name="page.margin.inner">0.75in</xsl:param>
<xsl:param name="page.margin.outer">0.5in</xsl:param>
<xsl:param name="body.start.indent">0.1in</xsl:param>
<xsl:param name="double.sided">1</xsl:param>


<xsl:param name="body.font.master" select="10"/>
<xsl:param name="hyphenate">true</xsl:param>
<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="section.label.includes.component.label" select="1"/>
<xsl:param name="section.autolabel.max.depth" select="2"/>
<!-- <xsl:param name="insert.xref.page.number" select="'yes'"/> -->
<xsl:param name="toc.indent.width" select="'30'"/>
<xsl:param name="default.table.width" select="'110mm'"/>
<xsl:param name="default.image.width">110mm</xsl:param>
<xsl:param name="body.font.family">Times</xsl:param>
<xsl:param name="header.column.widths">1 3 1</xsl:param>


<xsl:param name="orderedlist.label.width">2em</xsl:param>

<xsl:attribute-set name="formal.title.properties"
                   use-attribute-sets="normal.para.spacing">
  <xsl:attribute name="font-weight">bold</xsl:attribute>
  <xsl:attribute name="font-size">10pt</xsl:attribute>
  <xsl:attribute name="hyphenate">false</xsl:attribute>
  <xsl:attribute name="space-after.minimum">0.4em</xsl:attribute>
  <xsl:attribute name="space-after.optimum">0.6em</xsl:attribute>
  <xsl:attribute name="space-after.maximum">0.8em</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="table.cell.padding">
  <xsl:attribute name="padding-left">5pt</xsl:attribute>
  <xsl:attribute name="padding-right">5pt</xsl:attribute>
  <xsl:attribute name="padding-top">2pt</xsl:attribute>
  <xsl:attribute name="padding-bottom">2pt</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="admonition.title.properties">
  <xsl:attribute name="font-size">12pt</xsl:attribute>
</xsl:attribute-set>


<xsl:attribute-set name="section.title.properties">
  <xsl:attribute name="font-family">Times</xsl:attribute>
</xsl:attribute-set>


<xsl:attribute-set name="section.level1.properties">
  <xsl:attribute name="break-before">page</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="section.title.level1.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master * 1.3"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="section.title.level2.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master * 1.23"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="section.title.level3.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master*1.1"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="section.title.level4.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>

<xsl:param name="local.l10n.xml" select="document('')"/>
<l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0">
  <l:l10n language="en">
    <l:context name="xref">
      <l:template name="page.citation" text="  [%p] "/>
    </l:context>
  </l:l10n>
</l:i18n>

</xsl:stylesheet>
