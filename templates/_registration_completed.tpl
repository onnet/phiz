<div class="row-login" style="margin-top: 0em; text-align: center; font-size: 20px; color: grey;">
  <span>{_ Thank you for registering. _}</span>
  <br />
  <span>{_ Please check your mailbox for further instructions. _}</span>
</div>
<div class="row-login" style="margin-top: 3em; text-align: center; font-size: 20px; color: grey;">
  {% wire id="index_login" action={update target="right" template="_phiz_login_form.tpl"} %}
  <span id="index_login" style="cursor: pointer; color: lightblue;">{_ Sign In. _}</span>
</div>
