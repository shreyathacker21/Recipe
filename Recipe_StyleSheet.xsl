<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/">
        <html>
            <body style="background: -moz-linear-gradient(right,rgba(163,209,25,0),rgba(255,255,204,1));" ></body>
            
            <xsl:apply-templates />
            
        </html>
        
    </xsl:template>
    
    
  
    
    <xsl:template match="Recipe/Recipe_Header">
        <html>
            <h4 style="margin-left:50px;color:#A3D119;font-family:Verdana"> Internal General Entity: <xsl:value-of select = "GroupName"/> </h4>
              
            <h2 style="margin-left:50px;color:#A3D119;font-family:Verdana"> Recipe Name : <xsl:value-of select = "Name"/> </h2>
            <h4 style="margin-left:50px;color:#A3D119;font-family:Verdana"> Author: <xsl:value-of select = "Author/@Name"/> </h4>
                
            
        </html>
        
    </xsl:template>
    
    <xsl:template match="Recipe/Image">
       
        <img TARGET="_blank" style="margin-left:50px;">
            <xsl:attribute name="src">
                <xsl:value-of select="@rec_image" />
            </xsl:attribute>
            
            <xsl:attribute name="height"> 
                <xsl:value-of select="450"/>
            </xsl:attribute>
            
            <xsl:attribute name="width"> 
                <xsl:value-of select="500"/>
            </xsl:attribute>
           
        </img>  <br /> <br />
        
    </xsl:template>
   
    <xsl:template match="Recipe/Ingredients">
        <h2 style="margin-left:50px;color:#A3D119;font-family:Verdana"> 
             Ingredients:
        </h2>
     
        <xsl:for-each select="ItemsList">
            <b > 
                <xsl:value-of select="text()"/>
            </b>            
        
          <ul>  
            <xsl:for-each select="Item">
                <li style="margin-left:25px;font-family:Verdana">
                    <xsl:value-of select="Quantity" />
                        <xsl:for-each select="Quantity">
                            <xsl:value-of select="@UOM" />.     
                        </xsl:for-each>
                    <xsl:value-of select="ItemName" /> 
                </li>
            </xsl:for-each>
        </ul>
            
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="Recipe/Directions/Steps">
        <h2 style="margin-left:50px;color:#A3D119;font-family:Verdana"> <xsl:value-of select="name()"/>: </h2>
       <xsl:for-each select="StepDescription">
            
           <p style="margin-left:50px;font-family:Verdana"><xsl:value-of select="@StepNumber" /> . 
            <xsl:value-of select="." /> </p>
        
        
       </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>