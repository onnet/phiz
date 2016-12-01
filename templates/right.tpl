<div id="right">
{% if zotonic_dispatch == "password_reset_form" %}
  {% include "_phiz_password_reset_form.tpl" %}
{% else %}
  {% include "_phiz_login_form.tpl" %}
{% endif %}
</div>
