package com.spicy.food.persistence;

import com.spicy.food.domain.FoodVO;

public interface FoodDAO{

	public FoodVO selectOneFood(int fd_num) throws Exception;
	
}
