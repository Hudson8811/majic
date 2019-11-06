<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="footer">
        <div class="footer">
            <div class="container">
                <div class="text">
                    <p>Дата последнего обновления страницы <xsl:value-of select="EditPasport/Eduinfo/Created"/></p>
                    <p>Сайт создан по технологии <a href="#">«Конструктор сайтов e-Publish»</a></p>
                </div>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>