<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="LeftMenu">
  <div class="sidemenu">
    <div class="burder">Меню сайта</div>
    <ul class="menu">
      <li class="active">
        <a href="/m1.html">Главная</a>
      </li>
      <li class="has-child">
        <a href="">Сведения об образовательной организации</a>
        <ul>
          <li><a href="/sveden/common.html">Основные сведения</a></li>
          <li><a href="/sveden/struct.html">Структура и органы управления образовательной организацией</a></li>
          <li><a href="/sveden/document.html">Документы</a></li>
          <li><a href="/sveden/education.html">Образование</a></li>
          <li><a href="/sveden/edustandarts.html">Образовательные стандарты</a></li>
          <li><a href="/sveden/employees.html">Руководство. Педагогический (научно-педагогический) состав</a></li>
          <li><a href="/sveden/objects.html">Материально-техническое обеспечение и оснащенность образовательного процесса</a></li>
          <li><a href="/sveden/grants.html">Стипендии и иные виды материальной поддержки</a></li>
          <li><a href="/sveden/paid_edu.html">Платные образовательные услуги</a></li>
          <li><a href="/sveden/budget.html">Финансово-хозяйственная деятельность</a></li>
          <li><a href="/sveden/vacant.html">Вакантные места для приема (перевода)</a></li>
          <li><a href="/sveden/inostran.html">Сведения об интеграции российского образования с мировым образовательным пространством</a></li>
        </ul>
      </li>
      <li class="has-child">
        <a href="">Информационная безопасность</a>
        <ul>
          <li><a href="/infosec/common.htm">Локальные нормативные акты в сфере обеспечения информационной безопасности обучающихся</a></li>
          <li><a href="/infosec/normreg.html">Нормативное регулирование</a></li>
          <li><a href="/infosec/educator.html">Педагогическим работникам</a></li>
          <li><a href="/infosec/students.html">Обучающимся</a></li>
          <li><a href="/infosec/parents.html">Родителям</a></li>
          <li><a href="/infosec/sites.html">Детские безопасные сайты</a></li>
        </ul>
      </li>
      <li class="has-child">
        <a href="">Антикоррупция</a>
        <ul>
          <li><a href="/anticorruption/normativnieacti.html">Нормативные правовые и иные акты в сфере противодействия коррупци</a></li>
          <li><a href="/anticorruption/expertise.html">Антикоррупционная экспертиза</a></li>
          <li><a href="/anticorruption/iniemetodmaterialy.html">Методические материалы</a></li>
          <li><a href="/anticorruption/forms.html">Формы документов, связанных с противодействием коррупции, для заполнения</a></li>
          <li><a href="/anticorruption/svedenodohodah.html">Сведения о доходах, расходах, об имуществе и обязательствах имущественного характера</a></li>
          <li><a href="/anticorruption/commission.html">Комиссия по соблюдению требований к служебному поведению и урегулированию конфликта интересов (аттестационная комиссия)</a></li>
          <li><a href="/anticorruption/feedback.html">Обратная связь для сообщений о фактах коррупции</a></li>
        </ul>
      </li>
      <li>
        <a href="/sveden/employees.html">Независимая оценка качества</a>
      </li>
      <xsl:if test="count(EditPasport/ClassGroup/ClassArray/item)>0">
        <li>
          <a href="/classgroup/classes.html">Классы</a>
        </li>
      </xsl:if>
      <xsl:if test="count(EditPasport/ClassGroup/GroupArray/item)>0">
        <li>
          <a href="/classgroup/groups.html">Группы</a>
        </li>
      </xsl:if>
      <li>
        <a href="">Педагоги</a>
      </li>
      <li>
        <a href="/sveden/vacant.html">Условия приема</a>
      </li>
    </ul>
  </div>

</xsl:template>



</xsl:stylesheet>

