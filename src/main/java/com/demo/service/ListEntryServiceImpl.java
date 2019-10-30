package com.demo.service;

import java.util.List;

import com.demo.mapper.ListEntryMapper;
import com.demo.pojo.ListEntry;

public class ListEntryServiceImpl implements ListEntryService{

	
//	ListEntryMapper lis
	@Override
	public List<ListEntry> selectTree() {
		
		//加载所有的菜单列表
//		List<ListEntry> rootList  = ListEntryMapper.findByLevels("1",null);
		
		
		return null;
	}

	@Override
	public List<ListEntry> findOneByLevels(String string, Boolean boo) {
		// TODO Auto-generated method stub
		return null;
	}

}
