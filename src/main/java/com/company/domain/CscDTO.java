package com.company.domain;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class CscDTO {
	private int rn;
  private int CSC_BNO;
  private String CSC_TITLE;
  private String CSC_CONTENT;
  private Date CSC_REGDATE;
  private String CSC_RFI;
  private String CSC_ANSWER;
  private String user_id;
  private String CSC_CHECK;
  
}
