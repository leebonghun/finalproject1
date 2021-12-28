package com.company.mapper;

import java.util.List;


import com.company.domain.CscDTO;



public interface CscMapper {
	public List<CscDTO> listAll();
	public int insert(CscDTO insertDto);
}
