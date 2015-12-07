package org.sjac.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ScheduleDAOImpl implements ScheduleDAO{
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<ScheduleVO> findMyScheduleById(String id) {
		return sqlSessionTemplate.selectList("member.findMyScheduleById", id);
	}

}
