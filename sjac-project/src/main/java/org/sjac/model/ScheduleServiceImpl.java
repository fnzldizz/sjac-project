package org.sjac.model;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service
public class ScheduleServiceImpl implements ScheduleService{
	@Resource
	private ScheduleDAO scheduleDAO;
	
	@Override
	public List<ScheduleVO> findMyScheduleById(String id) {
		return scheduleDAO.findMyScheduleById(id);
	}

}
