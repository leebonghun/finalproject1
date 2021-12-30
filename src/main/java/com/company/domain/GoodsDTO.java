package com.company.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class GoodsDTO {
	private String GOODS_NAME;
	private int GOODS_PRICE;
	private String GOODS_CONTENT;
	private int GOODS_NUM;
}
