{% if not m.kazoo.is_auth %}
  <div class="login-block">
    {% wire id="sign_in_form"
            type="submit"
            postback="signin"
            delegate="mod_kazoo"
    %}
    <form id="sign_in_form"
          class="form-horizontal"
          name="sign_in_form"
          method="post"
          action="postback">
      <!-- catch "Enter" to submit at any input -->
      <input type="submit" style="display: none"/>
      <div class="login-input row-login1"
           style="color: grey;
                  font-size: 2em;
                  text-align: center;
                  margin-bottom: 1em;">
        <span class="hidden-lg hidden-md">
          {{ m.vars.page_header }}
        </span>
      </div>
      <div class="login-input row-login">
        <input type="text"
               id="username"
               name="username"
               value=""
               placeholder="{_ Login _}"/>
        <i class="fa fa-envelope"></i>
      </div>
      <div class="login-input row-login">
        <input type="password"
               name="password"
               id="password"
               placeholder="{_ Password _}"/>
        <i class="fa fa-lock"></i>
      </div>
      <div class="login-input row-login">
        <input type="text"
               id="account"
               name="account"
               value=""
               placeholder="{_ Account Name _}"/>
        <i class="fa fa-bookmark"></i>
      </div>
      <div class="forgot" style="display: none1;">
        {% wire id="index_signup"
                action={update target="right" template="_phiz_signup.tpl"}
        %}
        <span id="index_signup"
              style="float: left;
                     color: grey;
                     margin-left: 1.5em;
                     cursor: pointer;">
          {_ Sign Up _}
        </span>
        {% wire id="index_pwd_recovery"
                action={update target="right" template="_phiz_password_form.tpl"}
        %}
        <span id="index_pwd_recovery"
              style="color: grey; cursor: pointer;">
          {_ Password _}
        </span>
      </div>
      <div class="row-login" style="margin-top: 3em;">
        {% button class="btn-right"
                  id="sign_in_btn"
                  text=_"Enter"
                  action={submit target="sign_in_form"}
        %}
      </div>
    </form>
  </div>
  {% wire action={connect signal={emit_growl_signal signal_filter=m.kazoo.signal_filter}
                          action={update template="_z_growl_add.tpl"}
                 }
  %}
{% endif %}
