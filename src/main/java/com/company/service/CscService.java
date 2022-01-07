package com.company.service;

import java.security.Principal;
import java.util.List;

import com.company.domain.Criteria;
import com.company.domain.CscDTO;



public interface CscService {
	public List<CscDTO> getList(Criteria cri);
	public boolean register(CscDTO insertDto);
	public CscDTO getRow(int Csc_Bno);
	public boolean remove(int Csc_Bno);
	public boolean update(CscDTO updateDto);
	public boolean update2(CscDTO updateDto2);
	public int getTotalCount(Criteria cri);
	public List<CscDTO> getmyList(Principal username);
}
