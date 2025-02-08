<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head><title>TP Operateur</title>
<link rel="stylesheet" href="style.css" type='text/css'/>
</head>
<body>
<div id="main">
    <h1>Liste des clients</h1>
    <xsl:for-each select="operateur/client">
    <h3>Nom/Code client : <xsl:value-of select="@nom"/> - 
    <xsl:value-of select="@code"/></h3>
    <table border="1">
    <tr>
    <th>N° Abonnement</th>
    <th>Type</th>
    <th>Adate Abonnement</th>
    <th>Total facture</th>
    </tr>
    <xsl:for-each select="abonnement">
        <tr>
        <td><xsl:value-of select="@num"/></td>
        <td><xsl:value-of select="@type"/></td>
        <td><xsl:value-of select="@dateab"/></td>
        <td><xsl:value-of select="sum(facture/@montant)"/></td>
        </tr>
    </xsl:for-each>

    </table>
    
    </xsl:for-each>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
