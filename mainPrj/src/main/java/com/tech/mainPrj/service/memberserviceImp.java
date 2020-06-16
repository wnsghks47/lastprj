package com.tech.mainPrj.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tech.mainPrj.dao.IDao;
import com.tech.mainPrj.dto.MemberDto;

@Transactional
@Service
public class memberserviceImp implements memberservice{
	
	@Autowired 
	IDao dao;

	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Override
	public void register(MemberDto dto) throws Exception {
		
		dao.register(dto);
	}

	@Override
	public MemberDto login(MemberDto dto) throws Exception {
		
		return dao.login(dto);
	}

	@Override
	public void Findpass(String id, String mail, String pass) {
		dao.Findpass(id, mail, pass);
		
	}

	@Override
	public int checkid(String id) {
		int result=dao.checkid(id);
		return result;
	}

	}


