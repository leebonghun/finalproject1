package com.company.service;

import java.util.List;

import com.company.domain.Criteria;
import com.company.domain.InfoDTO;

public interface NoticeService {
	public List<InfoDTO> getList(Criteria cri);
	public boolean register(InfoDTO insertDto);
	public InfoDTO getRow(int Info_Bno);
	public boolean update(InfoDTO updateDto);
	public boolean remove(int Info_Bno);
	public int getTotalCount(Criteria cri);
}
