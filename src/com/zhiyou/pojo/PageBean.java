package com.zhiyou.pojo;

import java.util.List;

public class PageBean {
	private int pc ; //pageCode当前页码
	private int tp ; //totalPage总共页数
	private int tr ; //totalrecord总记录数
	private int record ; //每页的记录数
	public int getPc() {
		return pc;
	}
	public void setPc(int pc) {
		this.pc = pc;
	}
	public int getTp() {
		if(tr % record ==0) {
			return tr/record;
		}else
		{
			return tr/record+1;
		}
	}
	public int getTr() {
		return tr;
	}
	public void setTr(int tr) {
		this.tr = tr;
	}
	public int getRecord() {
		return record;
	}
	public void setRecord(int record) {
		this.record = record;
	}
	public List getBeanList() {
		return beanList;
	}
	public void setBeanList(List beanList) {
		this.beanList = beanList;
	}
	private List beanList ; //每页中的数据记录
	
	
	
}
