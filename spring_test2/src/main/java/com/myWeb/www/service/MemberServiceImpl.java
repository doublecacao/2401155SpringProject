package com.myWeb.www.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.myWeb.www.repository.MemberDAO;
import com.myWeb.www.security.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService{
	
	@Inject
	private MemberDAO mdao;
	
	@Override
	public int memberRegister(MemberVO mvo) {
		log.info("register service impl");
		mdao.memberRegister(mvo);
		
		return mdao.registerAuthInit(mvo.getEmail());
	}

	@Override
	public boolean updateLastLogin(String authEmail) {
		log.info("updateLastLogin service impl");
		
		return mdao.updateLastLogin(authEmail) > 0 ? true : false;
	}

}
