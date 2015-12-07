package org.sjac.model;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
@Service
public class GroupJoinServiceImpl implements GroupJoinService{
	
	@Resource
	private GroupJoinDAO groupJoinDAO;
	
	@Override
	public List<GroupJoinVO> getAllJoinRequestList(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void acceptGroupMember(GroupJoinVO vo) {
		// TODO Auto-generated method stub
		
	}
	
	 /**
	    *  자신이 요청한 그룹 리스트 받아오는 메서드  --> 혜진
	    */
	@Override
	public List<GroupVO> getAllJoinRequestGroup(String id) {
		return groupJoinDAO.getAllJoinRequestGroup(id);
	}

	@Override
	public void joinGroup(GroupJoinVO gjvo) {
		groupJoinDAO.joinGroup(gjvo);
	}

}
