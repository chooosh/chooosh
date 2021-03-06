package com.side_on.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.side_on.dto.Member;

@Mapper
public interface MemberDao {
	
	/** login : return grade */
	public String login(String memberId, String memberPw);
	
	/** login : return domain */
	public Member loginToMember(String memberId, String memberPw);

	/** select all member */
	public List<Member> selectMemberList();
	
	/** select one member */
	public Member selectMember(String memberId);
	
	/** 회원탈퇴 */
	public void deleteMember(String memberId, String memberPw);

	/** 회원가입 */
	public int insertMember(Member dto);
	
	public int idCheck(String memberId);

}
