package com.company.domain;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
@AllArgsConstructor
public class UserDTO {
	private String user_id;
	private String user_name;
	private String user_password;
	private String user_confirmPassword;
	private String user_birth;
	private String user_email;
	private String user_tel;
	private Date user_regdate;
	
	
	private List<AuthDTO> authList;
}
