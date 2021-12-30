package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.domain.InfoDTO;
import com.company.mapper.NoticeMapper;
@Service
public class NoticeServiceImpl implements NoticeService {

	
	@Autowired
	private NoticeMapper noticeMapper;
	
	@Override
	public List<InfoDTO> getList() {
		return noticeMapper.listAll();
	}


	@Override
	public boolean register(InfoDTO insertDto) {
		 boolean result= noticeMapper.insert(insertDto)>0?true:false;
		return result;
	}

}