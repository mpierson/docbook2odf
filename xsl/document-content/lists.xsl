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
	office:class="text"
	office:version="1.0">



<xsl:template match="itemizedlist">
	
	<xsl:if test="title">
		<xsl:element name="text:h">
			<xsl:attribute name="text:style-name">Headings-small</xsl:attribute>
			<xsl:value-of select="title"/>
		</xsl:element>
	</xsl:if>
	
	<xsl:element name="text:list">
		<xsl:attribute name="text:style-name">list-default</xsl:attribute>
		<xsl:apply-templates/>
	</xsl:element>
</xsl:template>


<xsl:template match="orderedlist">
	
	<xsl:if test="title">
		<xsl:element name="text:h">
			<xsl:attribute name="text:style-name">Headings-small</xsl:attribute>
			<xsl:value-of select="title"/>
		</xsl:element>
	</xsl:if>
	
	<xsl:element name="text:list">
		<xsl:attribute name="text:style-name">
			<xsl:text>list-</xsl:text>
			<xsl:choose>
				<xsl:when test="@numeration"><xsl:value-of select="@numeration"/></xsl:when>
				<xsl:otherwise>arabic</xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>
		<xsl:attribute name="text:continue-numbering">
			<xsl:choose>
				<xsl:when test="@continuation='continues'">true</xsl:when>
				<xsl:otherwise>false</xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>
		<xsl:apply-templates/>
	</xsl:element>
</xsl:template>


<xsl:template match="listitem">
	<xsl:element name="text:list-item">
		<xsl:apply-templates/>
	</xsl:element>
</xsl:template>


</xsl:stylesheet>