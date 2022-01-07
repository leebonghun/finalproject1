package com.company.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class PwdDTO {
	private String user_id;
	private String user_password; //현재 비밀번호
	private String new_password; //현재 비밀번호	
	private String confirm_password; //변경할 비밀번호
}
