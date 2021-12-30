package com.company.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.company.domain.Criteria;
import com.company.domain.movieDTO;

public interface MovieMapper {
	public movieDTO read(int movieCD);
	
	public List<movieDTO> list();
	
public int modify(movieDTO dto);
	
	public int remove(int bno);
	
	public int totalCnt(Criteria cri);
	
	public int updateReplyCnt(@Param("bno")int bno,@Param("amount")int amount);

}
