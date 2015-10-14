    <div style="background-color: #303039;" class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="hidden-xs navbar-brand" href="/">Cloud PBX Portal</a>
          <a class="visible-xs navbar-brand" href="/">Cloud PBX</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
           {% if not m.kazoo.is_auth %}
             <li class="hidden-sm hidden-md"><a href="/">{_ Home _}</a></li>
           {% endif %}
           {% if m.kazoo.is_auth %}
             {% if m.session.lb_user_id and m.kazoo.is_kazoo_account_admin %}
               {% include "_lb_topmenu.tpl" %}
             {% endif %}
           <li class="divider visible-xs"></li>
           <li><a id="xs_sign_out" class="visible-xs" href="#">{_ Sign out _}</a></li>
           {% wire id="xs_sign_out" postback={signout} delegate="mod_kazoo" %} 
           {% endif %}
           {% if not m.kazoo.is_auth %}
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">{_ Services _} <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="/virtualoffice">{_ Virtual Office _}</a></li>
                  <li><a href="/vpbx">{_ Hosted PBX _}</a></li>
                  <li><a href="/freenumbers">{_ Phone Numbers _}</a></li>
                  <li><a href="/virtualserver">{_ Virtual Server _}</a></li>
                  <li><a href="/cloudstorage">{_ Cloud Storage _}</a></li>
                  <li><a href="/spla">{_ Hosted Microsoft Software _}</a></li>
                  <li><a href="/internet">{_ Internet Access _}</a></li>
                  <li><a href="/ivr">{_ IVR _}</a></li>
                  <li class="divider"></li>
                  <li><a href="/serviceorder">{_ Service Order _}</a></li>
                  <li><a href="/payments">{_ Payments _}</a></li>
                  <li><a href="/termsandconditions">{_ Terms & Cons _}</a></li>
                </ul>
            </li>
           {% endif %}
           {% if not m.kazoo.is_auth %}
            <li class="dropdown hidden-sm">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">{_ About us _} <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="/aboutus">{_ About us _}</a></li>
                  <li><a href="/network">{_ Network _}</a></li>
                  <li><a href="/trademark">{_ Trademark _}</a></li>
                  <li><a href="/licenses">{_ Licenses _}</a></li>
                  <li><a href="/companydetails">{_ Company details _}</a></li>
                  <li><a href="/contactus">{_ Contact us _}</a></li>
                </ul>
            </li>
           {% endif %}
           {% if not m.kazoo.is_auth %}
            <li class="hidden-sm hidden-md"><a href="/contactus">{_ Contact us _}</a></li>
            <li class="divider visible-xs"></li>
            <li class="visible-xs"><a href="/login">{_ Sign in _}</a></li>
           {% endif %}
            <!-- Profile links for extra small screens -->
            <!-- <li  class="visible-xs"><a href="#">Sign out</a></li> -->
          </ul>
          <ul class="nav navbar-nav navbar-right hidden-xs">
          {% if not m.kazoo.is_auth %}
            <!-- Sign in & Sign up -->
            <li id="sign-up">
              <a href="/signup">{_ Sing up _}</a>
            </li>
            <li id="sign-in">
              <a href="#">{_ Sign in _}</a>
              <div class="search-box hidden" id="sign-in-box">
                {% wire id="sign_in_form" type="submit" postback={innoauth} delegate="mod_kazoo" %}
                <form id="sign_in_form" class="input-group" method="post" action="postback">
                  <input type="text" class="form-control mb-10" placeholder="{_ Login _}" id="username" 
                          name="username" value=""  autofocus="autofocus" autocapitalize="off" autocomplete="on" tabindex=1 />
                  {% validate id="username" type={presence} %}

                  <input type="password" class="form-control mb-10" placeholder="{_ Password _}" 
                          id="password" name="password" value="" autocomplete="on" tabindex=2/>

                  <input type="text" class="form-control mb-10" placeholder="{_ Account Name _}"
                          id="account" name="account" value="" autocomplete="on" tabindex=3/>

                  {% button text=_"Enter" action={submit target="sign_in_form"} class="btn btn-default" %}
                  <a id="forgot-pwd" class="undecorate-link pull-right">{_ Forgot your password? _}</a>
                </form>

              </div>
              <div class="search-box hidden" id="forgot-pwd-box">
                {% wire id="forgottenpwd_form" type="submit" postback={forgottenpwd} delegate="phiz" %}
                <form id="forgottenpwd_form" class="input-group" method="post" action="postback">
                  <div class="mb-10" style="width: 230px; text-transform: none;">{_ Input Email _}</div>
                  <input class="form-control mb-10" placeholder="{_ Email _}" type="text" id="user_email" 
                         name="user_email" value=""  autofocus="autofocus" autocapitalize="off" autocomplete="on" tabindex=1>
                  {% validate id="user_email" type={presence} type={email} %}
                  {% button text=_"Receive password" action={submit target="forgottenpwd_form"} class="btn btn-default" %}
                  <button id="cancel-pwd-btn" class="btn btn-default pull-right" type="button">{_ Cancel _}</button>
                </form>
              </div>
            </li>
            <!-- Place Order -->
            <li id="order">
              <a href="/first_order"><i class="fa fa-shopping-cart" style="padding-right: .5em;"></i> {_ Order _}</a>
            </li>
          {% endif %}
          {% if m.kazoo.is_auth %}
            <!-- Admin Sign in -->
           <li id="sign_out">
             <a class="visible-lg visible-md" href="#">{_ Sign out _}</a>
             <a class="visible-sm" href="#"><i class="fa fa-power-off fa-lg"></i></a>
           </li>
           {% wire id="sign_out" postback={signout} delegate="mod_kazoo" %} 
          {% endif %}
            {% all include "language_choice.tpl" %}
          </ul>
           {% if m.kazoo.is_auth %}
             {% if m.modules.info.mod_kazoo.enabled and m.kazoo.get_kazoo_account_id %}
                 {% include "_kazoo_topmenu.tpl" %}
             {% endif %}
           {% endif %}
        </div>
      </div>
    </div>
