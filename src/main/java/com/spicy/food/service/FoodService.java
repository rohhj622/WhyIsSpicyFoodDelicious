package com.spicy.food.service;

import com.spicy.food.domain.FoodVO;


public interface FoodService {
	
	public FoodVO selectOneFood(int fd_num) throws Exception;
	

}
