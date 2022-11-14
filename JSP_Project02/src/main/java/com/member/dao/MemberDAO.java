package com.member.dao;

import java.util.ArrayList;

import com.member.dto.MemberDTO;

public interface MemberDAO {
	//추가
	public void memberInsert(MemberDTO member);
	//전체보기
	public ArrayList<MemberDTO> memberList();
	//수정
	public void memberUpdate(MemberDTO member);
	//삭제
	public void memberDelete(String userid);
	//상세보기
	public MemberDTO findById(String userid);
	//아이디중복체크
	public String idCheck(String userid);
	//로그인체크
	public int loginCheck(String userid, String pwd);
	//회원수
	public int getCount();

}






