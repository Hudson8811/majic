<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="comments">
        <div class="home-main-block comments-block">
            <div class="big-title-block">Комментарии</div>
            <div class="comments-form">
                <form action="/" class="form-style">
                    <div class="flex-block">
                        <label class="item input-block">Фамилия, имя, отчество
                            <input type="text" name="fio" placeholder="например, Иванов Андрей Сергеевич" />
                        </label>
                        <label class="item input-block">Ваш Email
                            <input type="text" name="email" placeholder="email@mail.ru" />
                        </label>
                        <label class="item input-block">Ваш статус
                            <select name="status">
                                <option>Выберите</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </label>
                    </div>
                    <label class="input-block">Ваш комментарий
                        <textarea name="comment"></textarea>
                    </label>
                    <div class="capcha-block">
                        <div class="capcha-title">Введите код с картинки</div>
                        <label class="input-block">
                            <input type="text" name="code" />
                        </label>
                        <div class="chapcha-img"><img src="img/capcha.png" alt="" /></div>
                        <div class="btn-row">
                            <button type="submit" class="btn-blue">Отправить</button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="comments">
                <div class="comment-block home-block">
                    <div class="title-block">Владимир Ильич Ленин, <span>Иное</span></div>
                    <div class="text-style comment">Всеобщая вера в революцию есть уже начало революции.</div>
                    <div class="date-time">17.09.2019, 15:24</div>
                </div>
                <div class="comment-block home-block">
                    <div class="title-block">Мао Цзэдун, <span>Иное</span></div>
                    <div class="text-style comment">Наша стратегия состоит в том, чтобы одному биться против десяти, наша тактика — в том, чтобы десяти биться против одного. Это — один из основных законов, обеспечивающих нам победу над врагом.</div>
                    <div class="date-time">17.09.2019, 15:24</div>
                </div>
                <div class="comment-block home-block">
                    <div class="title-block">Хо Ши Мин, <span>Иное</span></div>
                    <div class="text-style comment">Мальчиком лет тринадцати я впервые услышал французские слова: свобода, равенство и братство — ведь для нас всякий белый — это француз.<br />
                        И мне захотелось познакомиться с французской цивилизацией, прощупать, что скрывается за этими словами.</div>
                    <div class="date-time">17.09.2019, 15:24</div>
                </div>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>