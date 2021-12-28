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
	private String peopleNm;
	private String showTm;
	private String MOVIE_CONTENT;
	private String genreNm;
	private String watchGradeNm;
	private String nationNm;
	private String companys;
	private String openDt;
}
