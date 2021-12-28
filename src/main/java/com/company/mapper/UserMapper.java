package com.company.mapper;

import com.company.domain.UserDTO;

public interface UserMapper {
	public int insert(UserDTO userDto);
	public UserDTO selectById(String userid);
}
