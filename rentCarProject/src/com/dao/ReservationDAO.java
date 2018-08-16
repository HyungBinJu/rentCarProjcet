package com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.CarDTO;
import com.dto.ReservationDTO;

public class ReservationDAO {

	public int insertOrder(SqlSession session, ReservationDTO reservDTO) {
		int result = session.insert("com.reservation.insertOrder", reservDTO);
		return result;
	}

	public int updateState(SqlSession session, String carid) {
		int result = session.update("com.reservation.updateState", carid);
		return 0;
	}
}
