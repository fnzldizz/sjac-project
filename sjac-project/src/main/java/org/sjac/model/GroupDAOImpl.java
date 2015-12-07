package org.sjac.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
@Repository
public class GroupDAOImpl implements GroupDAO{
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override  
	public GroupVO findGroupByLeaderId(String id) {
		return sqlSessionTemplate.selectOne("group.findGroupByLeaderId", id);
	}
	
	@Override  
	public boolean checkMyGroup(Map<String, String> map) {
		if(sqlSessionTemplate.selectOne("member.checkMyGroup", map) == null){
			return false;
		}else{
			return true;
		}
	}
	
	/**
	 *  내가 가입한 그룹 리스트를 받아오는 메서드  -  혜진
	 */
	@Override
	public List<GroupVO> getAllMyGroup(String id) {
		return sqlSessionTemplate.selectList("group.getAllmyGroup", id);
	}
	
	@Override
	public void createGroup(GroupVO vo) {
		sqlSessionTemplate.insert("group.createGroup", vo);
	}

	@Override
	public List<GroupVO> getAllGroupList() {
		return sqlSessionTemplate.selectList("group.getAllGroupList");
	}

	
    /**
     *  내가 만든 그룹의 정보를 받아오는 메서드  - 혜진
     */
	@Override
	public GroupVO createMyGroupInfo(String id) {
		return sqlSessionTemplate.selectOne("group.createMyGroupInfo", id);
	}

	@Override
	public List<GroupVO> findGroupListByCategory(Map<String, String> map) {
		return sqlSessionTemplate.selectList("group.findGroupListByCategory", map);
	}

	@Override
	public List<GroupVO> findMyGroupListBySubject(Map<String, String> map) {
		return sqlSessionTemplate.selectList("group.findMyGroupListBySubject", map);
	}
	

	
	@Override
	public List<GroupVO> findGroupListByGroupTitle(String title) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<GroupVO> findGroupListByLocation(GroupVO vo) {
		return sqlSessionTemplate.selectList("group.findGroupListByLocation",vo);
	}
	
	@Override
	public List<GroupVO> findGroupListBySubjectCategory(GroupVO vo) {
		return sqlSessionTemplate.selectList("group.findGroupListBySubjectCategory",vo);
	}

	@Override
	public List<GroupVO> findGroupListBySubject(GroupVO vo) {
		return sqlSessionTemplate.selectList("group.findGroupListBySubject",vo);
	}

	
	@Override
	public void enterGroup(Map<String, String> map) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateGroupInfo(GroupVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteGroupByLeaderId(String id) {
		// TODO Auto-generated method stub
		
	}

	
	   @Override // Location+SubjectCategory
	   public List<GroupVO> findGroupListByLocationAndSubjectCategory(GroupVO vo) {
	      HashMap<String, String> paramMap = new HashMap<String, String>();
	      paramMap.put("gLocation", vo.getgLocation());
	      paramMap.put("subjectCategory", vo.getSubjectVO().getSubjectCategory());
	      return sqlSessionTemplate.selectList("group.findGroupListByLocationAndSubjectCategory", paramMap);
	   }

	   @Override // Location+Subject
	   public List<GroupVO> findGroupListByLocationAndSubject(GroupVO vo) {
	      HashMap<String, String> paramMap = new HashMap<String, String>();
	      paramMap.put("gLocation", vo.getgLocation());
	      paramMap.put("subject", vo.getSubjectVO().getSubject());
	      return sqlSessionTemplate.selectList("group.findGroupListByLocationAndSubject", paramMap);
	   }
	  
	   @Override    //Location+GName
	   public List<GroupVO> findGroupListByLocationAndGName(GroupVO vo) {
	      System.out.println("location and Name");
	      HashMap<String, String> paramMap = new HashMap<String, String>();
	      paramMap.put("gLocation", vo.getgLocation());
	      paramMap.put("gName", vo.getgName());
	      return sqlSessionTemplate.selectList("group.findGroupListByLocationAndGName", paramMap);
	   }
	 
	   @Override    //Location+Subject+GName
	   public List<GroupVO> findGroupListByLocationAndSubjectAndGName(GroupVO vo) {
	      HashMap<String, String> paramMap = new HashMap<String, String>();
	      paramMap.put("gLocation", vo.getgLocation());
	      paramMap.put("subject", vo.getSubjectVO().getSubject());
	      paramMap.put("gName", vo.getgName());
	      return sqlSessionTemplate.selectList("group.findGroupListByLocationAndSubjectAndGName", paramMap);
	   }
	 
	   @Override    //Location+SubjectCategory+GName
	   public List<GroupVO> findGroupListByLocationAndSubjectCategoryAndGName(GroupVO vo) {
	      HashMap<String, String> paramMap = new HashMap<String, String>();
	      paramMap.put("gLocation", vo.getgLocation());
	      paramMap.put("subjectCategory", vo.getSubjectVO().getSubjectCategory());
	      paramMap.put("gName", vo.getgName());
	      return sqlSessionTemplate.selectList("group.findGroupListByLocationAndSubjectCategoryAndGName", paramMap);
	   }
	 
	   @Override    //SubjectCategory+GName
	   public List<GroupVO> findGroupListBySubjectCategoryAndGName(GroupVO vo) {
	      HashMap<String, String> paramMap = new HashMap<String, String>();
	      paramMap.put("subjectCategory", vo.getSubjectVO().getSubjectCategory());
	      paramMap.put("gName", vo.getgName());
	      return sqlSessionTemplate.selectList("group.findGroupListBySubjectCategoryAndGName", paramMap);
	   }
	  
	   @Override   //Subject+GName
	   public List<GroupVO> findGroupListBySubjectAndGName(GroupVO vo) {
	      HashMap<String, String> paramMap = new HashMap<String, String>();
	      paramMap.put("subject", vo.getSubjectVO().getSubject());
	      paramMap.put("gName", vo.getgName());
	      return sqlSessionTemplate.selectList("group.findGroupListBySubjectAndGName", paramMap);
	   }

	   @Override  //GName
	   public List<GroupVO> findGroupListByGNameKeyword(GroupVO vo) {
	      return sqlSessionTemplate.selectList("group.findGroupListByGNameKeyword", vo);
	   }

	@Override
	public List<GroupVO> findMyJoinGroupListByCategory(Map<String, String> map) {
		return sqlSessionTemplate.selectList("group.findMyJoinGroupListByCategory", map);
	}

	@Override
	public List<GroupVO> findMyJoinGroupListBySubject(Map<String, String> map) {
		return sqlSessionTemplate.selectList("group.findMyJoinGroupListBySubject", map);
	}

	

}
