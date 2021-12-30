package com.company.mapper;

import java.util.List;


import com.company.domain.CscDTO;



public interface CscMapper {
	public List<CscDTO> listAll();
	public int insert1(CscDTO insertDto);
	public CscDTO read(int Csc_Bno);
	public int delete(int Csc_Bno);
	public int update(CscDTO updateDto);
}
