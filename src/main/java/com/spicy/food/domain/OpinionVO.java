package com.spicy.food.domain;

import java.util.Date;

public class OpinionVO {
	
	private int op_num;
	private int tp_num;
	private String op_opinion;
	private Date op_date;
	private int op_like;
	
	
	public int getOp_num() {
		return op_num;
	}
	public void setOp_num(int op_num) {
		this.op_num = op_num;
	}
	public int getTp_num() {
		return tp_num;
	}
	public void setTp_num(int tp_num) {
		this.tp_num = tp_num;
	}
	public String getOp_opinion() {
		return op_opinion;
	}
	public void setOp_opinion(String op_opinion) {
		this.op_opinion = op_opinion;
	}
	public Date getOp_date() {
		return op_date;
	}
	public void setOp_date(Date op_date) {
		this.op_date = op_date;
	}
	public int getOp_like() {
		return op_like;
	}
	public void setOp_like(int op_like) {
		this.op_like = op_like;
	}
	
	


}
