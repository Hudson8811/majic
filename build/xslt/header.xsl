<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="header">
               <div class="header logo cover" style="background-image: url(img/header-bg.jpg);">
            <div class="container">
                <div class="suptext">Сайт входит в межрегиональную информационную систему «Общедоступная информация образовательных организаций России»</div>
                <div class="school-name-row">
                    <div class="school-logo"><img src="img/logo.png" alt="" /></div>
                    <div class="school-name"><xsl:value-of select="page/schoolInfo/name"/></div>
                </div>
                <div class="school-contacts-row">
                    <div class="phone"><a href='tel:{page/schoolInfo/phoneLink}'><xsl:value-of select="page/schoolInfo/phone"/></a></div>
                    <div class="address"><xsl:value-of select="page/schoolInfo/address"/></div>
                </div>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>