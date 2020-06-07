package com.spicy.food.persistence;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spicy.food.domain.FoodVO;
import com.spicy.food.domain.OpinionVO;


@Repository
public class FoodDAOImpl implements FoodDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace="com.spicy.food.foodMapper";

	@Override
	public FoodVO selectOneFood(int fd_num) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".selectOneFood",fd_num);
	}

	
}

