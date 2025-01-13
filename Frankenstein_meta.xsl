<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <!-- <xsl:output method="xml" omit-xml-declaration="yes" indent="yes" /> -->

    
    <xsl:template match="tei:TEI">
                     <div class="row">
                         <div class="col">
                             <h4>About the manuscript page:</h4>
                             <xsl:value-of select="//tei:sourceDesc"/>
                             <xsl:value-of select="//tei:licence"/> <!-- You can change the way the metadata is visualised as well-->
                         </div>
                         <div class="col">
                            <ul> 
                                <li><b>Total number of modifications:</b>
                                    <xsl:value-of select="count(//tei:del|//tei:add)" /> <!-- Counts all the add and del elements, and puts it in a list item -->
                                </li>
                                <li><b>Number of additions:</b>
                                    <xsl:value-of select='count(//tei:add)'/>
                                </li>
                                <!-- add other list items in which you count things, such as the modifications made by Percy -->
                                <li><b>Number of deletions:</b>
                                    <xsl:value-of select='count(//tei:del)'/>
                                </li>
                                <li><b>Modifications by Percy Shelley:</b>
                                    <xsl:value-of select='count(//tei:add[@hand="#PBS"] | //tei:del[@hand="#PBS"])' />
                                </li>
                                <li><b>Modifications by Mary Shelley:</b>
                                    <xsl:value-of select='count(//tei:add[@hand="#MWS"] | //tei:del[@hand="#MWS"])' />
                                </li>
                                <li><b>Total number of words on the page:</b>
                                    <xsl:value-of select='count(tokenize(//tei:body//text(), "\s+"))' />
                                </li>
                            </ul>
                        </div>
                     </div>
        <hr/>
    </xsl:template>
    

</xsl:stylesheet>
