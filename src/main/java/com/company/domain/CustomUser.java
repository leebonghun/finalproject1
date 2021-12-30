package com.company.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;

@Getter
public class CustomUser extends User {
	
	private UserDTO user;

	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	
	public CustomUser(UserDTO user) {
		
		super(user.getUser_id(),user.getUser_password(),user.getAuthList()
															.stream()
															.map(authority -> new SimpleGrantedAuthority(authority.getAuthority()))
															.collect(Collectors.toList()));
		this.user = user;
		
	}
	

}
