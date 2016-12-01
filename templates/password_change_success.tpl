<div class="row-login" style="margin-top: 0em; text-align: center; font-size: 20px; color: grey;">
  <span>{_ Password changed successfully. _}</span>
</div>
<div class="row-login" style="margin-top: 3em; text-align: center; font-size: 20px; color: grey;">
  {% wire id="index_login" action={update target="right" template="_phiz_login_form.tpl"} %}
  <span id="index_login" style="cursor: pointer; color: lightblue;">{_ Please try to sign-in. _}</span>
</div>
