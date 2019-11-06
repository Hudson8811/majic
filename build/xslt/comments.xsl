<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="comments">
        <xsl:if test="EditPasport/Eduinfo/Comments='1'">
            <div class="home-main-block comments-block">
                <div class="big-title-block">Комментарии</div>
                <div class="comments-form">
                    <form action="/" method="POST" name="comment_form" id="comment_form" class="form-style">
                        <input type="hidden" name="pid" value="1" />
                        <input type="hidden" name="title" value="Главная" />
                        <input type="hidden" name="notify" value="yes" />
                        <div class="flex-block">
                            <label class="item input-block">Фамилия, имя, отчество
                                <input type="text" name="poster_name" placeholder="например, Иванов Андрей Сергеевич" />
                            </label>
                            <label class="item input-block">Ваш Email
                                <input type="text" name="poster_email" placeholder="email@mail.ru" />
                            </label>
                            <label class="item input-block">Ваш статус
                                <select name="poster_status">
                                    <option value="-1">Выберите</option>
                                    <option value="1">Педагог</option>
                                    <option value="2">Ученик</option>
                                    <option value="3">Родитель</option>
                                    <option value="4">Преподаватель ВУЗа</option>
                                    <option value="5">Администратор</option>
                                    <option value="6">Иное</option>
                                </select>
                            </label>
                        </div>
                        <label class="input-block">Ваш комментарий
                            <textarea name="comment"></textarea>
                        </label>
                        <div class="capcha-block">
                            <div class="capcha-title">Введите код с картинки</div>
                            <label class="input-block">
                                <input type="text" maxlength="5" name="code" id="code" />
                            </label>
                            <div class="chapcha-img"><img name="capcha" id="capcha" src="/_ext/picutf.php" alt="" /></div>
                            <div class="btn-row">
                                <button type="submit" id="comment-button" name="send" class="btn-blue">Отправить</button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="comments">
                    <iframe id="comm" onload="autoIframe('comm');" height="1" marginHeight="0" src="/_ext/comment.php?1" frameBorder="0" width="100%" name="comm" marginWidth="0"></iframe>
                </div>
                <script type="text/javascript" src="/_ext/comment.js"></script>
            </div>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>