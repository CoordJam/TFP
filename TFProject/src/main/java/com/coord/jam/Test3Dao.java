package com.coord.jam;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public class Test3Dao extends CommonDao {

	public List<Test3Dto> getAlldatas() {
		List<Test3Dto> list=getSqlSession().selectList("Test3Alldata");
		return list;
	}
}
