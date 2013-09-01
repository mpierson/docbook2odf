<?xml version="1.0" encoding="utf-8"?>
<!--
	
	docbook2odf - DocBook to OpenDocument XSL Transformation
	Copyright (C) 2006 Roman Fordinal
	http://open.comsultia.com/docbook2odf/
	
	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.
	
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
-->
<xsl:stylesheet
	version="1.0"
	xmlns:docbook="http://docbook.org/ns/docbook"
	xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
	xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0"
	xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
	xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0"
	xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0" 
	xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0"
	xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0"
	xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0"
	xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0"
	xmlns:math="http://www.w3.org/1998/Math/MathML"
	xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0"
	xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0"
	xmlns:dom="http://www.w3.org/2001/xml-events"
	xmlns:xforms="http://www.w3.org/2002/xforms"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:presentation="urn:oasis:names:tc:opendocument:xmlns:presentation:1.0"
	office:class="text"
	office:version="1.0">


<xsl:template name="section" match="docbook:section|docbook:sect1|docbook:sect2|docbook:sect3|docbook:sect4|docbook:sect5">
	
	<!-- compute level of section -->
	<xsl:variable name="level">
		<xsl:call-template name="section.level"/>
	</xsl:variable>
	
  <!-- any preceeding sections ? -->
	<xsl:variable name="sectNum">
		<xsl:call-template name="section.number"/>
	</xsl:variable>
	
	<xsl:comment>
		<xsl:text>section level </xsl:text><xsl:value-of select="$level"/>
	</xsl:comment>
	
	<text:h>
	  <xsl:attribute name="text:outline-level">
	    <xsl:value-of select="$level"/>
	  </xsl:attribute>
	  <xsl:attribute name="text:style-name">
	    <xsl:text>Heading </xsl:text>
	    <xsl:if test="$level &lt; 5">
	      <xsl:value-of select="$level + 1"/>
	    </xsl:if>
	    <xsl:if test="$level &gt; 4"><xsl:text>s</xsl:text></xsl:if>
      <!-- uncomment to use page break version of style for first section
      <xsl:if test="$sectNum = 1"><xsl:text>WithBreak</xsl:text></xsl:if>
      -->
	  </xsl:attribute>
	  <xsl:value-of select="child::docbook:info/docbook:title"/>
	</text:h>
	
	<xsl:apply-templates/>
	
</xsl:template>


<xsl:template match="
	docbook:section/docbook:subtitle |
	docbook:sect1/docbook:subtitle |
	docbook:sect2/docbook:subtitle |
	docbook:sect3/docbook:subtitle |
	docbook:sect4/docbook:subtitle |
	docbook:sect5/docbook:subtitle">
	
	<text:p
		text:style-name="Paragraph_20_Heading">
		<xsl:apply-templates/>
	</text:p>
	
</xsl:template>


<xsl:template match="
	docbook:section/docbook:title |
	docbook:sect1/docbook:title |
	docbook:sect2/docbook:title |
	docbook:sect3/docbook:title |
	docbook:sect4/docbook:title |
	docbook:sect5/docbook:title"/>


</xsl:stylesheet>
