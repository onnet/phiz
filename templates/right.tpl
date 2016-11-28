<div id="right">
  {% if not m.kazoo.is_auth %}
    <div class="login-block">
      {% wire id="sign_in_form" type="submit" postback={innoauth} delegate="mod_kazoo" %}
      <form id="sign_in_form" class="form-horizontal" name="sign_in_form" method="post" action="postback">
        <div class="login-input row-login">
          <input type="text" id="username" name="username" value="" placeholder="{_ Login _}" />
          <i class="fa fa-envelope"></i>
        </div>
        <div class="login-input row-login">
          <input type="password" name="password" id="password" placeholder="{_ Password _}" />
          <i class="fa fa-lock"></i>
        </div>
        <div class="login-input row-login">
          <input type="text" id="account" name="account" value="" placeholder="{_ Account Name _}" />
          <i class="fa fa-bookmark"></i>
        </div>
        <div class="forgot" style="display: none;">
          <a href="javascript:void(0);" class="recover_password"><span>{_ Forgot Info? _}</span></a>
        </div>
        <div class="row-login" style="margin-top: 3em;">
          {% button class="btn-right" text=_"Enter" text=_"Enter" action={submit target="sign_in_form"} %}
        </div>
      </form>
    </div>
  {% endif %}
</div>
