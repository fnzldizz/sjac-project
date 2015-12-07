package org.sjac.model;

import java.util.List;

public interface ScheduleService {
	public List<ScheduleVO> findMyScheduleById(String id); // 자신의 아이디로 스케줄리스트 받아오기
}
