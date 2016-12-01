{% if not m.kazoo.is_auth %}
  <div id="password_change_span_id" class="login-block">
    {% wire id="password_recovery_form" type="submit" postback={forgottenpwd} delegate="mod_kazoo" %}
    <form id="password_recovery_form" class="form-horizontal" name="password_recovery_form" method="post" action="postback">
      <div class="login-input row-login">
        <input type="text" id="forgotten_username" name="forgotten_username" value="" placeholder="{_ Email or Username _}" />
        <i class="fa fa-envelope"></i>
      </div>
      <div class="login-input row-login">
        <input type="text" name="forgotten_account_name" id="forgotten_account_name" placeholder="{_ Account or Phone number _}" />
        <i class="fa fa-lock"></i>
      </div>
      <div class="forgot">
        {% wire id="index_login" action={update target="right" template="_phiz_login_form.tpl"} %}
        <span id="index_login" style="float: left; color: grey; cursor: pointer;">{_ Sign In _}</span>
        {% wire id="index_signup" action={update target="right" template="_phiz_signup.tpl"} %}
        <span id="index_signup" style="color: grey; margin-left: 1.5em; cursor: pointer;">{_ Sign Up _}</span>
      </div>
      <div class="row-login" style="margin-top: 3em;">
        {% button class="btn-right" text=_"Reset Password" action={submit target="password_recovery_form"} %}
      </div>
    </form>
  </div>
{% endif %}
