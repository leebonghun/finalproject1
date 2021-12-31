package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.company.domain.Criteria;
import com.company.domain.MovieReplyDTO;
import com.company.domain.ReplyPageDTO;
import com.company.mapper.MovieReplyMapper;

@Service
public class MovieReplyServiceImpl implements MovieReplyService{

	
	@Autowired
	private MovieReplyMapper mapper;
		
	@Override
	public boolean insertReply(MovieReplyDTO replyDto) {
		// TODO Auto-generated method stub
		return mapper.insertReply(replyDto)>0?true:false;
	}

	

	@Override
	public MovieReplyDTO getRow(int replyCd) {
		// TODO Auto-generated method stub
		return mapper.get(replyCd);
	}


	@Override
	public ReplyPageDTO list(Criteria cri, int movieCD) {
		// TODO Auto-generated method stub
		return new ReplyPageDTO(mapper.getCountByBno(movieCD),mapper.list(cri, movieCD));
	}



	@Override
	public boolean updateReply(MovieReplyDTO updateDto) {
		// TODO Auto-generated method stub
		return mapper.updateReply(updateDto)>0?true:false;
	}



	
	
	
}
