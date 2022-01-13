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
public class ticketDTO {
	private String user_id;
	private int movieCD;
	private String movieNM;
	private String reserveDay;
	private String reserveTime;
	private String reservePlace;
	private String reserveGuan;
	private String reserveSeat;
	private int reserveNm;
}
