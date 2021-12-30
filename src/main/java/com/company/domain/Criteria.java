package com.company.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/leebonghun/finalproject1.git
@Getter
@Setter
@ToString
public class Criteria {
	private int pageNum; //페이지번호
	private int amount; //한페이지당 보여줄 게시물 갯수
	
	private String type;
	private String keyword;
	
	public Criteria() {
		this(1,10);
	}
	
	public Criteria(int pageNum,int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String[] getTypeArr() {
		return type==null?new String[] {}:type.split("");
	}
<<<<<<< HEAD
	
 	
}
=======
}
>>>>>>> branch 'master' of https://github.com/leebonghun/finalproject1.git
