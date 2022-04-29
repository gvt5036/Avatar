<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" include-content-type="no" indent="yes"/>
    <xsl:variable name="mapsColl" as="document-node()+" select="collection('../docs/map-old')"/>

   <xsl:template match="/">
       <xsl:for-each select="$mapsColl">
           <xsl:variable name="filename" as="xs:string" select="base-uri() ! tokenize(., '/')[last()]"/>
           <xsl:result-document method="xhtml" html-version="5" omit-xml-declaration="yes" include-content-type="no" indent="yes" href="../docs/map/{$filename}">
   
           <xsl:apply-templates/>
     
           </xsl:result-document>
       </xsl:for-each>
   </xsl:template>
    
    <xsl:template match="head">
        <head>
            <title>Locations</title>
            <link rel="stylesheet" type="text/css" href="map.css" />
        </head>
    </xsl:template>
    
    
</xsl:stylesheet>