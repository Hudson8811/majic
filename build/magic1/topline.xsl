<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="TopLine">
  <div class="fixed-header">
    <div class="container">
      <form action="search_text();return false;" name="frm_s" class="search-form">
        <input type="text" name="search_t" placeholder="Поиск по сайту..." required="required" />
        <button type="submit" name="search_b"></button>
      </form>
      <a href="javascript:;" id="sv_on" class="low_see">Версия для слабовидящих</a>

      <div class="mobile-icons">
        <a href="javascript:;" class="mobile-menu-toggle">
          <svg viewBox="0 0 100 100">
            <path class="line top" d="m 70,38 h -40 c 0,0 -8.5,-0.149796 -8.5,8.5 0,8.649796 8.5,8.5 8.5,4.5 h 20 v -20" />
            <path class="line middle" d="m 70,50 h -40" />
            <path class="line bottom" d="m 30,62 h 40 c 0,0 8.5,0.149796 8.5,-8.5 0,-8.649796 -8.5,-8.5 -8.5,-4.5 h -20 v 20" />
          </svg>
        </a>
      </div>
    </div>
    <div class="sidemenu">
      <ul class="menu"></ul>
    </div>
  </div>

</xsl:template>



</xsl:stylesheet>

