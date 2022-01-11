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

public class ReserveDTO {
	/*
	 * movieNM varchar2(200), reserveDay varchar2(200), reserveTime varchar2(200),
	 * reserveSeat number, reserveNm number primary key
	 */
	
	private String movieNM;
	private String reserveDay;
	private String reserveTime;
	private int reserveSeat;
	private int reserveNm;
	
}
