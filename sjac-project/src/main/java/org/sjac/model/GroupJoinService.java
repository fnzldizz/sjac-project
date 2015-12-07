package org.sjac.model;

import java.util.List;

public interface GroupJoinService {
	
	/**
	 *  id 추가 수정  -> 혜진
	 * @param id
	 * @return
	 */
	//가입 요청 정보 게시글 리스트 얻어오기
	public List<GroupJoinVO> getAllJoinRequestList(String id);
	
	//가입 승인
	public void acceptGroupMember(GroupJoinVO vo);
	
	/**
	 *  자신의 아이디로 가입 요청한 그룹 리스트 받아오기  --> 혜진
	 * @param id
	 * @return
	 */
	//자신의 아이디로 가입 요청한 그룹 리스트 받아오기
	public List<GroupVO> getAllJoinRequestGroup(String id);
	
	// 가입신청 테이블로 추가
	public void joinGroup(GroupJoinVO gjvo);
}
