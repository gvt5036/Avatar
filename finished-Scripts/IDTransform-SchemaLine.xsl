<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
<!--2022-04-10 ebb: This is an XSLT script that reads your collection of files and outputs each file with
    your schema association line at the top. I output it in a temporary directory that 
    I named AvatarScriptsOut, and inspected the output to make sure the schema association is working.
    The schema association is working, so I renamed the output folder as AvatarScripts to replace the original one.
    All project XML files now have a schema associated with them.
    
    You can update the schema and it will update on each file now. I hope this helps to guide the remaining project markup.
   
    -->
    <xsl:variable name="AvatarScripts" as="document-node()+" select="collection('AvatarScripts')"/>
    
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="processing-instruction('xml-model')"/>
    
    <xsl:template match="/">
    <xsl:for-each select="$AvatarScripts"> 
        <xsl:variable name="filename" as="xs:string" select="base-uri() ! tokenize(., '/')[last()]"/>
        <xsl:result-document method="xml" indent="yes" href="AvatarScriptsOut/{$filename}"> 
        <xsl:processing-instruction name="xml-model">
    <xsl:text>href="../0_scripts_0.rnc" type="application/relax-ng-compact-syntax"</xsl:text>
  </xsl:processing-instruction>
            <xsl:apply-templates/>
       </xsl:result-document>  
    </xsl:for-each>
    </xsl:template> 
   
</xsl:stylesheet>