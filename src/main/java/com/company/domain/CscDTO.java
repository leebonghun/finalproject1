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
  private int Csc_Bno;
  private String Csc_Title;
  private String Csc_Content;
  private Date Csc_Regdate;
  private String Csc_Rfi;
  private String Csc_Answer;
  private String user_id;
  
}
