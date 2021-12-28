package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.domain.CscDTO;
import com.company.mapper.CscMapper;
@Service
public class CscServiceImpl implements CscService {
	@Autowired
	private CscMapper cscMapper;

	@Override
	public List<CscDTO> getList() {
		
		return cscMapper.listAll();
	}

	@Override
	public boolean register(CscDTO insertDto) {
		 boolean result= cscMapper.insert(insertDto)>0?true:false;
		return result;
	}

}
