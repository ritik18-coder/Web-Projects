<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body bgcolor="#1B1B1A" style="background-image: url('image1.jpg'); background-size:cover; height:100%;">
<br/><br/><br/><br/>
<h1 style="color: white"><center>TOP MOVIES</center></h1>
<br/><br/><br/><br/>
<table border="10" align="left" cellspacing="3" cellpadding="8">
<tr bgcolor="#FFAE45">
<th>Rank</th>
<th >Title</th>
<th>Year</th>
<th>Director</th>
<th>Rating</th>


</tr>
<xsl:for-each select="top_movies/movie">
<tr >
<td bgcolor='#3FE0D0'><xsl:value-of select="rank"/></td>
<td bgcolor="#0080FF"><xsl:value-of select="title"/></td>
<td bgcolor='#3FE0D0'><xsl:value-of select="year"/></td>
<td bgcolor='#0080FF'><xsl:value-of select="director"/></td>
<td bgcolor='#3FE0D0'><xsl:value-of select="rating"/></td>

</tr>
</xsl:for-each>

</table></body> </html>
</xsl:template>
</xsl:stylesheet>
