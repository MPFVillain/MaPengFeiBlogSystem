package com.blog.dao;
/*
 * 博主
 */

public interface BloggerDao {
	public Blogger getByUserName(@Param("userName")String paramString);

}
