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
    
    <xsl:template match="books">
        <html>
            <head>
                <style>
                    .title { font-style: italic; margin-bottom: 20px; }
                </style>
            </head>
            <table border="1">
                <xsl:apply-templates/>
            </table>
        </html>
    </xsl:template>
    
    <xsl:template match="book">
        <th><xsl:apply-templates/></th>
    </xsl:template>
   
    <xsl:template match="books/book/title">
        <h1>
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
   
    
    <xsl:template match="author">
        <h3> <u> Author </u> </h3>
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="abstract">
        <h3> <u> Abstract </u> </h3>
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="pubInfo">
        <h3> <u> Public Information </u> </h3>
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="condition">
        <h3> <u> Condition </u> </h3>
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    
    <xsl:template match="lister">
        <h3> <u> Lister </u> </h3>
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
</xsl:stylesheet>
