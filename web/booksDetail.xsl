<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : books.xsl
    Created on : 4 May 2018, 3:08 PM
    Author     : Pat Plenge
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    
    <xsl:template match="books/book/pubInfo">
        <html>
            <head>
                <style>
                    .title { font-style: italic; margin-bottom: 20px; }
                </style>
            </head>
            <table border="1">
                <thead>
                <tr>
                    <td>Edition </td>
                    <td>Year </td>
                    <td>ISBN </td>
                </tr> 
                </thead>
                <tbody>
                    <xsl:apply-templates/>
                </tbody>
            </table>
        </html>
    </xsl:template>

    <xsl:template match="books/book/pubInfo/*">
        <td>
            <xsl:choose>
                <xsl:when test="@id = ">
                    <xsl:value-of select='year' />
                    <xsl:value-of select="edition"/>
                </xsl:when>
                <xsl:otherwise/>
                    
            </xsl:choose>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    
    <xsl:template match="books/book/id|title|author|price|lister|abstract|condition|status|count">
        
    </xsl:template>
   
</xsl:stylesheet>
