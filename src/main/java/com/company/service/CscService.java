package com.company.service;

import java.util.List;


import com.company.domain.CscDTO;



public interface CscService {
	public List<CscDTO> getList();
	public boolean register(CscDTO insertDto);
	public CscDTO getRow(int Csc_Bno);
	public boolean remove(int Csc_Bno);
	public boolean update(CscDTO updateDto);
}
