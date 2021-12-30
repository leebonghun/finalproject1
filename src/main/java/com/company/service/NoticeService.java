package com.company.service;

import java.util.List;

import com.company.domain.InfoDTO;

public interface NoticeService {
	public List<InfoDTO> getList();
	public boolean register(InfoDTO insertDto);
}
