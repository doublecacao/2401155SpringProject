package com.myWeb.www.service;

import com.myWeb.www.security.MemberVO;

public interface MemberService {

	int memberRegister(MemberVO mvo);

	boolean updateLastLogin(String authEmail);

}