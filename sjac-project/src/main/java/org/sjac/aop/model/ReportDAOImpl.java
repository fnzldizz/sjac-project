package org.sjac.aop.model;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ReportDAOImpl implements ReportDAO{
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	@Override
	public Boolean checkKeyWord(String cval) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertKeyWord(String cval) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void countUpKeyWord(String cval) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ReportVO> showCount() {
		return sqlSessionTemplate.selectList("report.showCount");
	}

}
