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
	private String replyer;
	private Date replyDate;
	private String replyContent;
	private int movieCD;
}
