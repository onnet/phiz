{% if not m.kazoo.is_auth %}
  <div id="sign_up_div"style="margin-top: 4em;">
    {% wire id="sign_up_form" type="submit" postback="signup" delegate="mod_kazoo" %}
    <form id="sign_up_form" class="center_input form-horizontal" name="sign_in_form" method="post" action="postback">
      <div class="login-input row-login"  style="color: grey; font-size: 1.7em; text-align: center; margin-bottom: 1em;">
        <span class="hidden-lg hidden-md">{{ m.vars.title }} Sign Up</span>
      </div>
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
        <input type="text" id="email" name="email" value="" placeholder="{_ Confirm email _}" />
        <i class="fa fa-envelope"></i>
      </div>
      <div class="login-input row-login">
        <input type="text" name="companyname" id="companyname" placeholder="{_ Company name _}" />
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
        <span id="index_pwd_recovery" style="color: grey; cursor: pointer;">{_ Password _}</span>
      </div>
      <div class="row-login" style="margin-top: 2em;">
        {% if m.vars.signup_enabled == "true" %}
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
             data-sitekey="{{ m.vars.g_capture_site_key }}"
             data-theme="dark"
             data-size="compact"
             style="transform:scale(1);transform-origin:0 0">
        </div>
        <script src='https://www.google.com/recaptcha/api.js'></script>
      </div>
      <input type="hidden" name="notify_signed_up" value="yes" />
      <input type="hidden" name="kazoo_reseller_id" value="{{ m.vars.reseller_id }}" />
    </form>
  </div>
{% endif %}
