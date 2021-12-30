package com.company.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;




@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString	
public class movieDTO {
	private String rank;
	private String poster;
	private String key;
	private int movieCD;
	private String movieNM;
	private String actors;
	private String showTm;
	private String genres;
	private String watchGradeNm;
	private String nationNm;
	private String companyNm;
	private String openDt;
}
