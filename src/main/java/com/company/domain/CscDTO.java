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
  private int CscBno;
  private String CscTitle;
  private String CscContent;
  private Date CscRegdate;
  private String CscRfi;
  private String CscAnswer;
  private String CscWriter;
  
}
