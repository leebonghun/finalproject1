package com.company.domain;

import java.util.Date;

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
public class CommentDTO {
	private int idx;
	private int seq;
	private String content;
	private Date date;
	private String delete_yn;
	private String user_id;
	
}
