package com.company.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.domain.Criteria;
import com.company.domain.InfoDTO;
import com.company.mapper.NoticeMapper;
@Service
public class NoticeServiceImpl implements NoticeService {

	
	@Autowired
	private NoticeMapper noticeMapper;
	
	@Override
	public List<InfoDTO> getList(Criteria cri) {
		return noticeMapper.listAll(cri);     
	}


	@Override
	public boolean register(InfoDTO insertDto) {
		 boolean result= noticeMapper.insert(insertDto)>0?true:false;
		return result;
	}


	@Override
	public InfoDTO getRow(int Info_Bno) {
		return noticeMapper.read(Info_Bno);
	}




	@Override
	public boolean update(InfoDTO updateDto) {
		boolean modifyResult = noticeMapper.update(updateDto) == 1;
		return modifyResult;
	}


	@Override
	public boolean remove(int Info_Bno) {
		return noticeMapper.delete(Info_Bno)>0?true:false;
	}

	@Override
	public int getTotalCount(Criteria cri) {
		return noticeMapper.totalCnt(cri);
	}
}
