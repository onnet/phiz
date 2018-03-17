<!DOCTYPE html>
<html lang="{{ z_language|default:"en"|escape }}">
  <head>
    <meta charset="utf-8" />
    <title>{{ m.vars.page_header }}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="author" content="YOUR NAME HERE &copy; 2014" />
    {% lib "js/jquery-2.1.1.min.js" %}
    {% lib "js/jquery-migrate-1.0.0.js" %}
    {% lib "js/jquery-ui.min.js" %}
    {% lib "js/jquery.ui.touch-punch.min.js" %}
    {% lib "bootstrap/css/bootstrap.min.css" %}
    {% lib "bootstrap/js/bootstrap.min.js" %}
    {% lib "js/bootstrap-select.min.js" %}
    {% lib
          "css/z.modal.css"
          "css/z.growl.css"
          "css/jquery.loadmask.css"
    %}
    {% lib "js/apps/zotonic-1.0.js" %}
    {% lib "js/apps/z.widgetmanager.js" %}
    {% lib "js/modules/z.notice.js" %}
    {% lib "js/z.dialog.bootstrap3.js" %}
    {% lib "js/modules/ubf.js" %}
    {% lib 
          "js/modules/z.tooltip.js"
          "js/modules/z.feedback.js"
          "js/modules/z.formreplace.js"
          "js/modules/z.datepicker.js"
          "js/modules/z.menuedit.js"
          "js/modules/z.cropcenter.js"
          "js/modules/livevalidation-1.3.js"
          "js/modules/jquery.loadmask.js"
          "js/modules/jquery.timepicker.min.js"
     %}
    {% lib "css/font-awesome.min.css" %}
    {% lib "css/telicon.css" %}
    {% lib "css/icons.css" %}
    {% lib "css/phiz.css" %}
  </head>
  <body id="page">
    {% if m.kazoo.is_auth %}
      {% if m.modules.info.mod_onbill.enabled %}
        {% wire action={redirect location="/dashboard"} %}
      {% else %}
        {% if m.session.kazoo_reseller_account_id %}
          {% wire action={redirect location="/reseller_portal"} %}
        {% else %}
          {% if m.kazoo.is_kazoo_account_admin %}
            {% wire action={redirect location="/admin_settings"} %}
          {% else %}
            {% wire action={redirect location="/user_portal"} %}
          {% endif %}
        {% endif %}
      {% endif %}
    {% else %}
    <div class="container-fluid" style="height: 100%; padding: 0;">
      <div class="col-md-12" style="height: 100%; padding: 0;">
        {% include "left.tpl" %}
        {% include "right.tpl" %}
      </div>
    </div>
    {% endif %}
    {% script %}
  </body>
</html>
