<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template name="Head">
                                        <!--begin of head info-->
<meta name="viewport" content="width=device-width, initial-scale=1"/>

<xsl:variable name="bg"><xsl:value-of select="EditPasport/Eduinfo/Headpic/Photo/item/LinkFile/Link"/></xsl:variable>
<xsl:variable name="mybg">
  <xsl:choose>
     <xsl:when test="$bg != ''">
        <xsl:text>background-image: url(</xsl:text><xsl:value-of select="$bg"/><xsl:text>); height: 100%;</xsl:text>
     </xsl:when>
     <xsl:otherwise>
        <xsl:text>height: 100%;</xsl:text>
     </xsl:otherwise>
   </xsl:choose>
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
                                    <DIV id="zagol" style="{$mybg}" class='{$myclass}'>
                                      <DIV id="name_div">


                              <DIV id="sitehead" >
                                <DIV id="region">
                                  <h6 style="font-size:10pt;">Сайт входит в межрегиональную информационную систему «Общедоступная информация образовательных организаций России»</h6>
                                </DIV>
                                <DIV id="orgname">
                                  <H1>
<xsl:variable name="zagoltype"><xsl:value-of select="EditPasport/Eduinfo/Headpic/Zagol"/></xsl:variable>
 <xsl:choose>
     <xsl:when test="$zagoltype = '2'">
<xsl:value-of disable-output-escaping="yes" select="EditPasport/Eduinfo/FaceInformation/MainInformation/SOrgName"/>
     </xsl:when>
     <xsl:otherwise>
<xsl:value-of disable-output-escaping="yes" select="EditPasport/Eduinfo/FaceInformation/MainInformation/OrgName"/>
     </xsl:otherwise>
   </xsl:choose>




</H1>
                                </DIV>
                                <DIV id="contacts">
                                 <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainContacts/OrgAdrCollect/Adress">

                                  <DIV id="adr"><P><span style="white-space:nowrap;"><xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/OrgAdrCollect/Adress/Region_str"/>, <xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/OrgAdrCollect/Adress/Place_str"/></span></P></DIV>
</xsl:if>
                                 <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Phone">
                                  <DIV id="tel"><P><span style="white-space:nowrap;">тел.: <xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Phone/item"/></span></P></DIV>
                               </xsl:if>
                                </DIV>
                              </DIV>
                                        <!--end of head info-->

                                </DIV>
                              </DIV>

</xsl:template>



</xsl:stylesheet>

