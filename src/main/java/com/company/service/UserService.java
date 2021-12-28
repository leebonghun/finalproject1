package com.company.service;

import com.company.domain.UserDTO;

public interface UserService {
	public boolean register(UserDTO userDto);
	public UserDTO dupId(String userid);
}
