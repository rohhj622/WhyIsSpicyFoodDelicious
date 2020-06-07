package com.spicy.food.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spicy.food.domain.FoodVO;
import com.spicy.food.persistence.FoodDAO;




@Service
public class FoodServiceImpl implements FoodService{

	@Inject
	private FoodDAO dao;

	@Override
	public FoodVO selectOneFood(int fd_num) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneFood(fd_num);
	}



}
