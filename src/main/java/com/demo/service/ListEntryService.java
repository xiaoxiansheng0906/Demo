package com.demo.service;

import java.util.List;

import com.demo.pojo.ListEntry;

public interface ListEntryService {

	public List<ListEntry> selectTree() ;

	public List<ListEntry> findOneByLevels(String string, Boolean boo) ;
	
}
