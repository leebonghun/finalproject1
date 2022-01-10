package com.company.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class InfoDTO {
	// rn : 임의 숫자 부여
	private int rn;
	private int INFO_BNO;
	private String INFO_TITLE;
	private String INFO_RFI;
	private String INFO_CONTENT;
	private Date INFO_REGDATE;
	private Date INFO_UPDATEDATE;
	private int INFO_CNT;
}
