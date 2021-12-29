/**
 * step2.jsp 검증하기
 */
$(function() {
	
/*	$(".btn-primary").click(function(){
		location.href = '/movie/index';
		
		
	})*/
	
  $("#regist").validate({
    errorPlacement: function(error, element) {
      $(element)
        .closest("form")
        .find("small[id='" + element.attr("id") + "']")
        .append(error);
    },
    rules: {
      user_id: {
        required: true,
        validId: true,
        remote:{
					url:"/signup/checkId",
					type:"post",
					beforeSend:function(xhr){
						xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);
					 },
					data:{
						userid:function(){
							return $('#userid').val();
						}
					}
				}		
      },
      user_password: {
        required: true,
        validPwd: true
      },
      confirm_password: {
        required: true,
        validPwd: true,
        equalTo:"#user_password"
      },
      user_name: {
        required: true,
        minlength: 2
      },
	  user_birth: {
		required: true
	  },
      user_email: {
        required: true,
        email: true
      },
	  user_tel: {
		required: true
	  }
    },
    messages: {
      user_id: {
        remote: "아이디가 중복되었습니다.",
        required: "아이디는 필수 입력 요소입니다."
      },
      user_password: {
        required: "비밀번호는 필수 입력 요소입니다."
      },
      confirm_password: {
        required: "비밀번호는 필수 입력 요소입니다.",
        equalTo:"이전 비밀번호와 다릅니다."
      },
      user_name: {
        required: "이름은 필수 입력 요소입니다.",
        minlength: "이름은 최소 2자리는 입력해야 합니다."
      },
	  user_birth: {
		required: "생년월일은 필수 요소입니다."
	  },
      user_email: {
        required: "이메일은 필수 입력 요소입니다."
      },
	  user_tel: {
		required: "전화번호는 필수 입력 요소입니다."
	  } 
    }
  });
});
$.validator.addMethod(
  "validId",
  function(value) {
    var regId = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{5,12}$/;
    return regId.test(value);
  },
  "아이디는 영문 대소문자,숫자를 포함하여 5~12자리 사이로 입력해야 합니다."
);
$.validator.addMethod(
  "validPwd",
  function(value) {
    var regPwd = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,15}$/;
    return regPwd.test(value);
  },
  "비밀번호는 숫자와 영문자와 특수문자의 조합으로 8~15자리를 사용해야 합니다."
);
$.validator.addMethod(
  "validBirth",
  function(value) {
    var regBirth = /^[0-9]+$/;
    return regBirth.test(value);
  },
  "생년월일을 확인해 주세요."
);


$.validator.addMethod(
  "email",
  function(value) {
    var regEmail = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    return regEmail.test(value);
  },
  "이메일 형식을 확인해 주세요."
);

$.validator.addMethod(
  "validTel",
  function(value) {
    var regTel = /^[0-9]+$/;
    return regTel.test(value);
  },
  "전화번호를 확인해 주세요."
);
