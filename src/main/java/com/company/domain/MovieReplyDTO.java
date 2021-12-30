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
public class MovieReplyDTO {
	private int replyCd;
	private int movieCD;
	private String replyContent;
	private String replyer;
	private Date replyDate;
}
