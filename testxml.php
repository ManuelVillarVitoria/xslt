<?php
 
$xml = new DOMDocument(); 
$xml->load('./lure.xml'); 

if (!$xml->schemaValidate('./lure.xsd')) { 
   echo "invalid<p/>";
} 
else { 
   echo "validated<p/>"; 
} 
?>