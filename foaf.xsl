<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:foaf="http://xmlns.com/foaf/0.1/"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">

  <xsl:output method="html" encoding="UTF-8" indent="yes" />

  <xsl:template match="/">
    <html>
      <head>
        <title>Fichier FOAF - Visualisation</title>
      </head>
      <body>
        <h1>Profil FOAF</h1>
        <xsl:apply-templates select="//foaf:Person" />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="foaf:Person">
    <div>
      <h2>Informations Personnelles</h2>
      <p>
        <strong>Nom :</strong>
        <xsl:value-of select="foaf:name" />
      </p>
      <p>
        <strong>Email :</strong>
        <xsl:value-of select="foaf:mbox" />
      </p>
      <p>
        <strong>Page d'accueil :</strong>
        <a href="{foaf:homepage/@rdf:resource}">
          <xsl:value-of select="foaf:homepage/@rdf:resource" />
        </a>
      </p>
    </div>
  </xsl:template>

</xsl:stylesheet>