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
                <thead>
                <tr>
                    <td>ID </td>
                    <td>Title </td>
                    <td>Author </td>
                    <td>Abstract </td>
                    <td>Pubinfo </td>
                    <td>Condition </td>
                    <td>Lister </td>
                    <td> Status </td>
                </tr> 
                </thead>
                <tbody>
                    <xsl:apply-templates/>
                </tbody>
            </table>
        </html>
    </xsl:template>
    
     <xsl:template match="book">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    
    <xsl:template match="book/*">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    
    <xsl:template match="book/status">
        <td>
        <a href='http://localhost:8080/wsassignment/bookDetails.jsp?/id={../id}'>Reserve</a>
        </td>
        <xsl:apply-templates/>
    </xsl:template>
   
</xsl:stylesheet>
