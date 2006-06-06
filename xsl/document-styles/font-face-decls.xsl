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
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format"
	xmlns:office="http://openoffice.org/2000/office"
	xmlns:style="http://openoffice.org/2000/style"
	xmlns:text="http://openoffice.org/2000/text"
	xmlns:table="http://openoffice.org/2000/table"
	xmlns:draw="http://openoffice.org/2000/drawing"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:meta="http://openoffice.org/2000/meta"
	xmlns:number="http://openoffice.org/2000/datastyle"
	xmlns:svg="http://www.w3.org/2000/svg"
	xmlns:chart="http://openoffice.org/2000/chart"
	xmlns:dr3d="http://openoffice.org/2000/dr3d"
	xmlns:math="http://www.w3.org/1998/Math/MathML"
	xmlns:form="http://openoffice.org/2000/form"
	xmlns:script="http://openoffice.org/2000/script"
	xmlns:config="http://openoffice.org/2001/config"
	xmlns:presentation="urn:oasis:names:tc:opendocument:xmlns:presentation:1.0"
	office:class="text"
	office:version="1.0">
	

<!-- automatically called from document-styles and document-content -->
<xsl:template name="document.font-face-decls">
	<style:font-face
		style:name="Courier New"
		svg:font-family="&apos;Courier New&apos;"
		style:font-family-generic="modern"
		style:font-pitch="fixed"/>
	<style:font-face
		style:name="Verdana"
		svg:font-family="Verdana"
		style:font-pitch="fixed"/>
	<style:font-face
		style:name="Arial"
		svg:font-family="Arial"
		style:font-pitch="variable"/>
	<style:font-face
		style:name="Arial Black"
		svg:font-family="Arial Black"
		style:font-pitch="variable"/>
	<style:font-face
		style:name="Wingdings"
		svg:font-family="Wingdings"
		style:font-pitch="variable"
		style:font-charset="x-symbol"/>
	<style:font-face
		style:name="Lucidasans"
		svg:font-family="Lucidasans"
		style:font-pitch="variable"/>
	<style:font-face
		style:name="Luxi Sans"
		svg:font-family="&apos;Luxi Sans&apos;"
		style:font-pitch="variable"/>
	<style:font-face
		style:name="Times New Roman"
		svg:font-family="&apos;Times New Roman&apos;"
		style:font-family-generic="roman"
		style:font-pitch="variable"/>
</xsl:template>


</xsl:stylesheet>