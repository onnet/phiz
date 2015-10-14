<!DOCTYPE html>
<html lang="{{ z_language|default:"en"|escape }}">
  <head>
    <meta charset="utf-8" />
    <title>{{ m.config.site.title.value }}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="author" content="YOUR NAME HERE &copy; 2014" />
    {% lib "js/jquery-2.1.1.min.js" %}
    {% lib "js/jquery-migrate-1.0.0.js" %}
    {% lib "js/jquery-ui.min.js" %}
    {% lib "js/jquery.ui.touch-punch.min.js" %}
    {% lib "css/bootstrap.min.css" %}
    {% lib "js/bootstrap.min.js" %}
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
    {% lib "css/project.css" %}
  </head>
  <body id="page">
    {% if m.kazoo.is_auth %}
      {% if m.session.kazoo_reseller_account_id %}
        {% wire action={redirect location="/reseller_portal"} %}
      {% else %}
        {% wire action={redirect location="/user_portal"} %}
      {% endif %}
    {% else %}
      {% include "right.tpl" %}
      {% include "left.tpl" %}
    {% endif %}
    {% script %}
  </body>
</html>