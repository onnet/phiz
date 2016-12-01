{% if not m.kazoo.is_auth %}
  <div style="top: 23%;" class="login-block">
    {% wire id="sign_up_form" type="submit" postback={innoauth} delegate="mod_kazoo" %}
    <form id="sign_up_form" class="form-horizontal" name="sign_in_form" method="post" action="postback">
      <div class="login-input row-login">
        <input type="text" id="firstname" name="firstname" value="" placeholder="{_ Your name _}" />
        <i class="fa fa-user"></i>
      </div>
      <div class="login-input row-login">
        <input type="text" id="surname" name="surname" value="" placeholder="{_ Your surname _}" />
        <i class="fa fa-user"></i>
      </div>
      <div class="login-input row-login">
        <input type="text" id="username" name="username" value="" placeholder="{_ Enter email address _}" />
        <i class="fa fa-envelope"></i>
      </div>
      <div class="login-input row-login">
        <input type="text" id="email" name="email" value="" placeholder="{_ Confirm email address _}" />
        <i class="fa fa-envelope"></i>
      </div>
      <div class="login-input row-login">
        <input type="text" name="companyname" id="companyname" placeholder="{_ Company name (optional) _}" />
        <i class="fa fa-bookmark"></i>
      </div>
      <div class="login-input row-login">
        <input type="text" id="phonenumber" name="phonenumber" value="" placeholder="{_ Phone number _}" />
        <i class="fa fa-phone"></i>
      </div>
      <div class="forgot" style="display: none1;">
        {% wire id="index_login" action={update target="right" template="_phiz_login_form.tpl"} %}
        <span id="index_login" style="float: left; color: grey; margin-left: 1.5em; cursor: pointer;">{_ Sign In _}</span>
        {% wire id="index_pwd_recovery" action={update target="right" template="_phiz_password_form.tpl"} %}
        <span id="index_pwd_recovery" style="color: grey; cursor: pointer;">{_ Password recovery _}</span>
      </div>
      <div class="row-login" style="margin-top: 2em;">
        {% if m.config.mod_kazoo.signup_enabled.value == "true" %}
          {% button class="btn-right" text=_"Count Me In" action={submit target="sign_up_form"} %}
        {% else %}
          {% button class="btn-right" text=_"Currently disabled" action={growl text=_"Sorry, sign up disabled."} %}
        {% endif %}
      </div>
      <div class="checkbox">
        <label>
          <input type="checkbox" id="checkbox" name="checkbox" />
          {% wire id="terms_of_service" action={dialog_open title=_"Terms of Service" template="terms_cons.tpl" width="auto"} %} 
          <span id="terms_of_service" style="color: grey;">{_ I agree to the Terms of Service _}</span>
        </label>
      </div>
      <div id="google_recaptcha" class="row-login" style="margin-top: 2.2em;">
        <div class="g-recaptcha"
             data-sitekey="{{ m.config.mod_kazoo.g_capture_site_key.value }}"
             data-theme="dark"
             style="transform:scale(0.88);transform-origin:0 0">
        </div>
        <script src='https://www.google.com/recaptcha/api.js'></script>
      </div>
    </form>
  </div>
{% endif %}
