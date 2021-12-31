package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.domain.Criteria;
import com.company.domain.CscDTO;
import com.company.mapper.CscMapper;
@Service
public class CscServiceImpl implements CscService {
	@Autowired
	private CscMapper cscMapper;

	@Override
	public List<CscDTO> getList(Criteria cri) {
		
		return cscMapper.listAll(cri);
	}

	@Override
	public boolean register(CscDTO insertDto) {
		 boolean result= cscMapper.insert1(insertDto)>0?true:false;
		return result;
	}

	@Override
	public CscDTO getRow(int Csc_Bno) {
		return cscMapper.read(Csc_Bno);
	
	}

	@Override
	public boolean remove(int Csc_Bno) {
		return cscMapper.delete(Csc_Bno)>0?true:false;
		
	}

	@Override
	public boolean update(CscDTO updateDto) {
		
		
		//게시물 수정
		boolean modifyResult = cscMapper.update(updateDto) == 1;
		
		
		
		return modifyResult;
	}

	@Override
	public boolean update2(CscDTO updateDto2) {
			boolean modifyResult = cscMapper.update(updateDto2) == 1;
		
		
		
		return modifyResult;
	}

	@Override
	public int getTotalCount(Criteria cri) {
		
		return cscMapper.totalCnt(cri);
	}

}
