{% if not m.kazoo.is_auth %}
  <div id="password_change_span_id" class="login-block" style="top: 30%;">
      <div class="row-login" style="margin-top: 0em; text-align: center; font-size: 30px; color: grey;">
        <span>{_ Password change _}</span>
      </div>
      <div class="row-login" style="margin-top: 3em;">
        {% button class="btn-right"
           text=_"Change password"
           action={postback postback={password_reset_submit reset_id=q.recovery} delegate="mod_kazoo"}
        %}
      </div>
      <div class="row-login" style="margin-top: 3em;">
        {% button class="btn-right" text=_"No, thanks!" action={redirect dispatch="home"} %}
      </div>
  </div>
{% endif %}
