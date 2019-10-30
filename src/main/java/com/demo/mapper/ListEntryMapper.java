package com.demo.mapper;

import java.util.List;

import com.demo.pojo.ListEntry;

public interface ListEntryMapper {

	//查询所有的列表
	public List<ListEntry> findAll();
	
	//查询单个列表
	public List<ListEntry> findByLevels(String levels,Boolean boo);

}
