package org.sjac.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class GroupBoardDAOImpl implements GroupBoardDAO{
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	@Override
	public void writeGroupBoard(GroupBoardVO gbvo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<GroupBoardVO> getGroupBoardList(String pageNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public GroupBoardVO showGroupBoardContent(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateCount(int no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteGroupBoardContent(String no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateGroupBoardContent(GroupBoardVO bvo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int totalContent() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void createGroupBoard(String id) {
		sqlSessionTemplate.insert("group.createGroupBoard", id);
	}

	@Override
	public void createSequence(String id) {
		sqlSessionTemplate.insert("group.createSequence", id);
	}
	
}
