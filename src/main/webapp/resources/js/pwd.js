/**
 * 비밀번호 변경
 */

$(function(){
	$("#password").validate({
		errorPlacement: function(error, element) {
		      $(element)
		        .closest("form")
		        .find("small[id='" + element.attr("id") + "']")
		        .append(error);
		    },
		rules: {
			user_password: {
				required: true,
				validPwd: true,
				equalTo:"#user_password"
			},
			new_password: {
				required: true,
				validPwd: true,
				dupPwd:true
			},
			confirm_password: {
				required: true,
				validPwd: true,
				dupPwd:true,
				equalTo:"#new_password"
			},
		},
		messages: {
			user_password: {
	        	required: "비밀번호는 필수 입력 요소입니다.",
				equalTo:"현재 비밀번호와 다릅니다."
	      	},
			new_password: {
	        	required: "비밀번호는 필수 입력 요소입니다."
	      	},
	      	confirm_password: {
	       		required: "비밀번호는 필수 입력 요소입니다.",
	        	equalTo:"이전 비밀번호와 다릅니다."
			}
		}
	});
});
$.validator.addMethod(
  "validPwd",
  function(value) {
    var chgPwd = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,15}$/;
    return chgPwd.test(value);
  },
  "비밀번호는 숫자와 영문자와 특수문자의 조합으로 8~15자리를 사용해야 합니다."
);
$.validator.addMethod(
  "dupPwd",
  function(value) {
    var currPwd = $("#user_password").val();

	if(value === currPwd){
		return false;
	}else{
		return true;
	}
  },
  "새 비밀번호가 현재 비밀번호와 같습니다."
);