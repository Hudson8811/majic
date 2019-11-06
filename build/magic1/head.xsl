<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template name="Head">

    <xsl:variable name="bg"><xsl:value-of select="EditPasport/Eduinfo/Headpic/Photo/item/LinkFile/Link"/></xsl:variable>

    <xsl:variable name="mybg">
        <xsl:if test="$bg != ''">
            <xsl:text>background-image: url(</xsl:text><xsl:value-of select="$bg"/><xsl:text>);</xsl:text>
        </xsl:if>
    </xsl:variable>

    <xsl:variable name="myclass" >
        <xsl:if test="$bg != ''">
            <xsl:variable name="bgtype"><xsl:value-of select="EditPasport/Eduinfo/Headpic/Logo"/></xsl:variable>
            <xsl:choose>
                <xsl:when test="$bgtype = '2'">
                    <xsl:text>cover</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>logo</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:variable>

    <div class="header {$myclass}" style="{$mybg}">
        <div class="container">
            <div class="suptext">Сайт входит в межрегиональную информационную систему «Общедоступная информация образовательных организаций России»</div>
            <div class="school-name-row">
                <xsl:variable name="zagoltype"><xsl:value-of select="EditPasport/Eduinfo/Headpic/Zagol"/></xsl:variable>
                <div class="school-name">
                    <xsl:choose>
                        <xsl:when test="$zagoltype = '2'">
                            <xsl:value-of disable-output-escaping="yes" select="EditPasport/Eduinfo/FaceInformation/MainInformation/SOrgName"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of disable-output-escaping="yes" select="EditPasport/Eduinfo/FaceInformation/MainInformation/OrgName"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </div>

            </div>
            <div class="school-contacts-row">
                <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Phone">
                    <div class="phone"><a href='tel:{EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Phone/item}'><xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Phone/item"/></a></div>
                </xsl:if>

                <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainContacts/OrgAdrCollect/Adress">
                    <div class="address"><xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/OrgAdrCollect/Adress/Region_str"/>, <xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/OrgAdrCollect/Adress/Place_str"/></div>
                </xsl:if>
            </div>
        </div>
    </div>
</xsl:template>



</xsl:stylesheet>

