package org.sjac.model;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service
public class SubjectServiceImpl implements SubjectService{
	@Resource
	private SubjectDAO subjectDAO;
	@Override
	public List<SubjectVO> getAllCategory() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SubjectVO findCategoryBySubject(String subject) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SubjectVO> getAllSubject(String category) {
		return subjectDAO.getAllSubject(category);
	}

	@Override
	public List<SubjectVO> findSubjectBySubjectCategory(String subjectCategory) {
		return subjectDAO.findSubjectBySubjectCategory(subjectCategory);
	}


}
