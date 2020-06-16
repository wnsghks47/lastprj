package com.tech.mainPrj.service;

import com.tech.mainPrj.dto.MemberDto;


public interface memberservice {
	
	public void register(MemberDto dto) throws Exception;

	public MemberDto login(MemberDto dto) throws Exception;
	
	public void Findpass(String id,String mail,String pass);
	
	public int checkid(String id);
}

