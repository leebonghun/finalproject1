package com.company.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Criteria {
	private int pageNum; // 페이지 번호
	private int amount; //한 페이지 당 보여줄 게시물 수
	 
	private String type;
	private String keyword;
	
	
	public Criteria() {
		this(1,10);   
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum; 
		this.amount = amount;
	}

	public String[] getTypeArr() {
		// 제목 => T => {'T'}
		// 제목 or 내용 or 작성자 => TCW => {'T','C','W'}
		
		return type==null?new String[] {}:type.split("");
	}
 	
}
