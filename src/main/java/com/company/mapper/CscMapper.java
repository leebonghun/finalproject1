package com.company.mapper;

import java.security.Principal;
import java.util.List;

import com.company.domain.Criteria;
import com.company.domain.CscDTO;



public interface CscMapper {
	public List<CscDTO> listAll(Criteria cri);
	public int insert1(CscDTO insertDto);
	public CscDTO read(int Csc_Bno);
	public int delete(int Csc_Bno);
	public int update(CscDTO updateDto);
	public int update2(CscDTO updateDto2);
	public int totalCnt(Criteria cri);
	public List<CscDTO> myList(Principal username);
}
