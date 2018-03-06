<div class="row-login" style="margin-top: 0em; text-align: center; font-size: 20px; color: grey;">
  <p>{_ Thank you for registering. _}</p>
  <br />
  <p>{_ Please check your mailbox for further instructions. _}</p>
  <p style="font-size: 0.6em; padding-top: 2em;">
    {_ Check your Spam or Junk Mail folders in case you didn't receive message. _}
  </p>
</div>
<div class="row-login" style="margin-top: 3em; text-align: center; font-size: 20px; color: grey;">
  {% wire id="index_login" action={update target="right" template="_phiz_login_form.tpl"} %}
  <span id="index_login" style="cursor: pointer; color: lightblue;">{_ Sign In. _}</span>
</div>
