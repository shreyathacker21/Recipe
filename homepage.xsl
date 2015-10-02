<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/">
        <html>
            <body background="recipe-card.jpg" style="background-repeat: no-repeat;width:100%;height:100%;background-size: cover;overflow:hidden;">
                <h1 style="    margin-top: 75px;
                    margin-left: 55px; color:#A3D119;
                    font-family:Verdana">
                   Home Page of Our Recipes
                </h1>
                
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="Recipe_Home/RecipeID/Image">
       
        <div style="float:left;margin:25px;margin-left: 70px;">
      <br/>
        <img TARGET="_blank" >
            <xsl:attribute name="src">
                <xsl:value-of select="@pic" />
            </xsl:attribute>
            
            <xsl:attribute name="height"> 
                <xsl:value-of select="250"/>
            </xsl:attribute>
            
            <xsl:attribute name="width"> 
                <xsl:value-of select="300"/>
            </xsl:attribute>
            
      
            
        </img>  
           
       
       </div>   
       
    </xsl:template>
    
    <xsl:template match="Recipe_Home/RecipeID/Web">
       
        
        <h2 style="color:#A3D119;font-family:Verdana">
               <A TARGET="_blank" style="text-decoration:none;color:#A3D119;margin-left: -280px;">
            <xsl:attribute name="HREF">
                <xsl:value-of select="@href">
                    
                </xsl:value-of>
            </xsl:attribute>
            <xsl:apply-templates />
        </A>
           </h2>
       
        
    </xsl:template>
    
    
    
   
    
</xsl:stylesheet>