package org.sjac.model;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TransactionServiceImpl implements TransactionService {
	@Resource
	private GroupDAO groupDAO;
	@Resource
	private GroupMemberDAO groupMemberDAO;
	@Resource
	private GroupBoardDAO groupBoardDAO;
	
	@Transactional
	@Override
	public void TransactionAll(GroupVO gvo, GroupMemberVO gmvo) throws Exception {
		groupDAO.createGroup(gvo);
		System.out.println("그룹생성");
		groupMemberDAO.addGroupMember(gmvo);
		System.out.println("그룹멤버추가");
		groupBoardDAO.createGroupBoard(gmvo.getMemberVO().getId());
		System.out.println("그룹게시판 생성");
		groupBoardDAO.createSequence(gmvo.getMemberVO().getId());
	}

}
