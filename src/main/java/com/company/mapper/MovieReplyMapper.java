package com.company.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.company.domain.Criteria;
import com.company.domain.MovieReplyDTO;

public interface MovieReplyMapper {
	public int insertReply(MovieReplyDTO replyDto);
	
	public List<MovieReplyDTO> list(@Param("cri") Criteria cri,@Param("movieCD") int movieCD);

	public MovieReplyDTO get(int replyCd);
	
	public int getCountByBno(int movieCD);
	
	public int updateReply(MovieReplyDTO updateDto);
}
