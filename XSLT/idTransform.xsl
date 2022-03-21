<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:variable name="avatarColl" as="document-node()+" select="collection('../finished-Scripts/CompletedScripts')"/>
    
    <xsl:template match="/">
        <xsl:for-each select="$avatarColl">
            <xsl:variable name="filename" as="xs:string" select="base-uri() ! tokenize(., '/')[last()]"/>
            <xsl:result-document method="xml" indent="yes" href="../finished-Scripts/TransformedScripts/{$filename}">
                
            <xsl:apply-templates/>
            
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="p[not(descendant::speaker)]/speech">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="p">
        <section>
            <xsl:apply-templates/>
        </section>
    </xsl:template>
    
    <xsl:template match="speech[preceding-sibling::speaker]">
        <speech speaker="{preceding-sibling::speaker}">
            <xsl:apply-templates/>
        </speech>
    </xsl:template>
    
    <xsl:template match="speaker"/>
    
    
    
</xsl:stylesheet>