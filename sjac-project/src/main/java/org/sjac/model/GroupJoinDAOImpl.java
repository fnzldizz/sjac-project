package org.sjac.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class GroupJoinDAOImpl implements GroupJoinDAO{
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	@Override
	public List<GroupJoinVO> getAllJoinRequestList(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void acceptGroupMember(GroupMemberVO vo) {
		// TODO Auto-generated method stub
		
	}

  
   /**
    *  자신이 요청한 그룹 리스트 받아오는 메서드 --> 혜진
    */
	@Override
	public List<GroupVO> getAllJoinRequestGroup(String id) {
		return sqlSessionTemplate.selectList("group.getAllJoinRequestGroup", id);
	}

	@Override
	public void joinGroup(GroupJoinVO gjvo) {
		sqlSessionTemplate.insert("join.joinGroup", gjvo);
	}

}
