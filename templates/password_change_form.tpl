{% wire id="passwordForm" type="submit" postback="password_recovery_form" delegate="mod_kazoo" %}
<form method="post" action="postback" id="passwordForm">
  <div class="row-login" style="margin-top: 0em; text-align: center; font-size: 24px; color: grey;">
    <p>{_ Enter new password for _}</p>
    <p style="color: #4db8ff;">{{ username }}</p>
    <p>{_ at _}</p>
    <p style="color: #4db8ff;">{{ account_name }}</p>
  </div>
  <div class="login-input row-login">
    <input type="password" id="password1" name="password1" value="" placeholder="{_ New password _}" autocomplete="off" />
    <i class="fa fa-lock"></i>
  </div>
    <span id="10char" class="fa fa-remove" style="color:#FF0004;"></span>
    <span style="color: grey;">{_ 10 Characters long _}</span>
    <br>
    <span id="ucase" class="fa fa-remove" style="color:#FF0004;"></span>
    <span style="color: grey;">{_ Uppercase letters _}</span>
    <br>
    <span id="lcase" class="fa fa-remove" style="color:#FF0004;"></span>
    <span style="color: grey;"> {_ Lowercase letters _}</span>
    <br>
    <span id="num" class="fa fa-remove" style="color:#FF0004;"></span>
    <span style="color: grey;">{_ Digits _}</span>
  <div class="login-input row-login">
    <input type="password" name="password2" id="password2" placeholder="{_ Repeat password _}" autocomplete="off" />
    <i class="fa fa-lock"></i>
  </div>
    <span id="pwmatch" class="fa fa-remove" style="color:#FF0004;"></span>
    <span style="color: grey;">{_ Passwords match _}</span>
  <div class="forgot">
    {% wire id="index_login" action={update target="right" template="_phiz_login_form.tpl"} %}
    <span id="index_login" style="float: left; color: grey; cursor: pointer;">{_ Sign In _}</span>
    {% wire id="index_signup" action={update target="right" template="_phiz_signup.tpl"} %}
    <span id="index_signup" style="color: grey; margin-left: 1.5em; cursor: pointer;">{_ Sign Up _}</span>
  </div>
  <div class="row-login" style="margin-top: 3em;">
    {% button class="btn-right" text=_"Set Password" action={submit target="passwordForm"} %}
  </div>
  <input type="hidden" name="account_id" value="{{ account_id }}">
  <input type="hidden" name="owner_id" value="{{ owner_id }}">
  <input type="hidden" name="auth_token" value="{{ auth_token }}">
  <input type="hidden" name="account_name" value="{{ account_name }}">
  <input type="hidden" name="username" value="{{ username }}">
</form>

{% javascript %}

function mypwdsubmit() {
    var ucase = new RegExp("[A-Z]+");
    var lcase = new RegExp("[a-z]+");
    var num = new RegExp("[0-9]+");

    if( $("#password1").val().length >= 10
       &&
        ucase.test($("#password1").val())
       &&
        lcase.test($("#password1").val())
       &&
        num.test($("#password1").val())
       &&
        ($("#password1").val() == $("#password2").val())
      )
       {
          $('form#passwordForm').submit();
       }else{
          z_growl_add('Please check password', 0, 'error');
       };
};

$("input[type=password]").keyup(function(){
        var ucase = new RegExp("[A-Z]+");
        var lcase = new RegExp("[a-z]+");
        var num = new RegExp("[0-9]+");

        if($("#password1").val().length >= 10){
                $("#10char").removeClass("fa-remove");
                $("#10char").addClass("fa-check");
                $("#10char").css("color","#00A41E");
        }else{
                $("#10char").removeClass("fa-check");
                $("#10char").addClass("fa-remove");
                $("#10char").css("color","#FF0004");
        }

        if(ucase.test($("#password1").val())){
                $("#ucase").removeClass("fa-remove");
                $("#ucase").addClass("fa-check");
                $("#ucase").css("color","#00A41E");
        }else{
                $("#ucase").removeClass("fa-check");
                $("#ucase").addClass("fa-remove");
                $("#ucase").css("color","#FF0004");
        }

        if(lcase.test($("#password1").val())){
                $("#lcase").removeClass("fa-remove");
                $("#lcase").addClass("fa-check");
                $("#lcase").css("color","#00A41E");
        }else{
                $("#lcase").removeClass("fa-check");
                $("#lcase").addClass("fa-remove");
                $("#lcase").css("color","#FF0004");
        }

        if(num.test($("#password1").val())){
                $("#num").removeClass("fa-remove");
                $("#num").addClass("fa-check");
                $("#num").css("color","#00A41E");
        }else{
                $("#num").removeClass("fa-check");
                $("#num").addClass("fa-remove");
                $("#num").css("color","#FF0004");
        }

        if($("#password1").val() == $("#password2").val()){
                $("#pwmatch").removeClass("fa-remove");
                $("#pwmatch").addClass("fa-check");
                $("#pwmatch").css("color","#00A41E");
        }else{
                $("#pwmatch").removeClass("fa-check");
                $("#pwmatch").addClass("fa-remove");
                $("#pwmatch").css("color","#FF0004");
        }
});

{% endjavascript %}

