package com.company.service;

import java.util.List;

import com.company.domain.Criteria;
import com.company.domain.MovieReplyDTO;
import com.company.domain.ReplyPageDTO;

public interface MovieReplyService {
	public boolean insertReply(MovieReplyDTO replyDto);
	
	public MovieReplyDTO getRow(int replyCd);
	
	public ReplyPageDTO list(Criteria cri, int movieCD	);
	
	public boolean updateReply(MovieReplyDTO updateDto);
	
	
	public boolean deleteReply(int replyCd);
}
