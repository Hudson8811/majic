<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="opros">
        <div class="home-main-block opros-block">
            <div class="big-title-block">Голосования</div>
            <div class="flex-block">
                <div class="item opros">
                    <div class="title-block">Быть или не быть</div>
                    <div class="content-block">
                        <form action="/">
                            <div class="variants">
                                <div class="radio-btn">
                                    <input type="radio" value="Быть" name="opros-1" id="opros-1_1" />
                                    <label for="opros-1_1" class="radio-label">Быть</label>
                                </div>
                                <div class="radio-btn">
                                    <input type="radio" value="Пить" name="opros-1" id="opros-1_2" />
                                    <label for="opros-1_2" class="radio-label">Пить</label>
                                </div>
                                <div class="radio-btn">
                                    <input type="radio" value="Есть" name="opros-1" id="opros-1_3" />
                                    <label for="opros-1_3" class="radio-label">Есть</label>
                                </div>
                                <div class="radio-btn">
                                    <input type="radio" value="Спать" name="opros-1" id="opros-1_4" />
                                    <label for="opros-1_4" class="radio-label">Спать</label>
                                </div>
                            </div>
                            <div class="btn-row">
                                <button type="submit" class="btn-blue">Голосовать</button>
                            </div>
                        </form>
                        <div class="link-row">
                            <a href="#">Результаты тестирования</a>
                        </div>
                    </div>
                </div>
                <div class="item opros">
                    <div class="title-block">Второе голосование со множественным выбором</div>
                    <div class="content-block">
                        <form action="/">
                            <div class="variants">
                                <div class="radio-btn">
                                    <input type="radio" value="Ответ 1" name="opros-2" id="opros-2_1" />
                                    <label for="opros-2_1" class="radio-label">Ответ 1</label>
                                </div>
                                <div class="radio-btn">
                                    <input type="radio" value="Ответ 2" name="opros-2" id="opros-2_2" />
                                    <label for="opros-2_2" class="radio-label">Ответ 2</label>
                                </div>
                                <div class="radio-btn">
                                    <input type="radio" value="Ответ 3" name="opros-2" id="opros-2_3" />
                                    <label for="opros-2_3" class="radio-label">Ответ 3</label>
                                </div>
                            </div>
                            <div class="btn-row">
                                <button type="submit" class="btn-blue">Голосовать</button>
                            </div>
                        </form>
                        <div class="link-row">
                            <a href="#">Результаты тестирования</a>
                        </div>
                    </div>
                </div>
                <div class="item opros">
                    <div class="title-block">Третье голосование</div>
                    <div class="content-block">
                        <div class="results">
                            <table>
                                <tr>
                                    <td>Быть</td>
                                    <td>
                                        <span class="line max" style="width: 50%">
                                            <span class="value">50.0%</span>
                                        </span>

                                    </td>
                                </tr>
                                <tr>
                                    <td>Пить</td>
                                    <td>
                                        <span class="line" style="width: 25%">
                                            <span class="value">25.0%</span>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Есть</td>
                                    <td>
                                        <span class="line" style="width: 12.5%">
                                            <span class="value">12.5%</span>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Спать</td>
                                    <td>
                                        <span class="line" style="width: 12.5%">
                                            <span class="value">12.5%</span>
                                        </span>
                                    </td>
                                </tr>
                            </table>
                            <div class="total">Всего проголосовало: 8</div>
                        </div>
                        <div class="link-row">
                            <a href="#">Проголосовать</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>