<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="sidemenu">
        <div class="sidemenu">
            <div class="burder">Меню сайта</div>
            <ul class="menu">
                <li>
                    <a href="">Главная</a>
                </li>
                <li class="has-child">
                    <a href="">Сведения об образовательной	организации</a>
                    <ul>
                        <li><a href="">Пример внутренней страницы</a></li>
                        <li><a href="">Детские безопасные сайты</a></li>
                    </ul>
                </li>
                <li class="has-child opened">
                    <a href="">Информационная безопасность</a>
                    <ul>
                        <li>
                            <a href="">Нормативное регулирование</a>
                        </li>
                        <li>
                            <a href="">Педагогическим работникам</a>
                        </li>
                        <li class="has-child opened">
                            <a href="">Обучающимся</a>
                            <ul>
                                <li class="active"><a href="">Пример внутренней страницы</a></li>
                                <li><a href="">Детские безопасные сайты</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="">Родителям</a>
                        </li>
                        <li>
                            <a href="">Детские безопасные сайты</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="">Антикоррупция</a>
                </li>
                <li>
                    <a href="">Независимая оценка качества</a>
                </li>
                <li>
                    <a href="">Педагоги</a>
                </li>
                <li>
                    <a href="">Условия приема</a>
                </li>
            </ul>
        </div>
    </xsl:template>

</xsl:stylesheet>