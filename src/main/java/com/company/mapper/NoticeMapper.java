package com.company.mapper;

import java.util.List;

import com.company.domain.Criteria;
import com.company.domain.InfoDTO;

public interface NoticeMapper {
	public List<InfoDTO> listAll(Criteria cri); 
	public int insert(InfoDTO insertDto);
	public InfoDTO read(int Info_Bno);
	public int update(InfoDTO updateDto);
	public int delete(int Info_Bno);
	public int totalCnt(Criteria cri);
	
}
