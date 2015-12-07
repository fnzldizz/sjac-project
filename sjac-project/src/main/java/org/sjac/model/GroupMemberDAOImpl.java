package org.sjac.model;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class GroupMemberDAOImpl implements GroupMemberDAO{
	
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public void addGroupMember(GroupMemberVO gmvo) {
		sqlSessionTemplate.insert("group.addGroupMember", gmvo);
	}

}
