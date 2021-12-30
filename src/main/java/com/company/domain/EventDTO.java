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
@NoArgsConstructor
@AllArgsConstructor
public class EventDTO {
	private int EVENT_BNO;
	private String EVENT_TITLE;
	private String EVENT_CONTENT;
	private Date EVENT_REGDATE;
	private Date EVENT_UPDATEDATE;
	private int EVENT_CNT;
	
}
