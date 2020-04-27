package com.blog.util;

public class CryptographyUtil {
	/**
	 *md5加密 视频12
	 */
	public static String md5(String str,String salt) {
		new Md5Hash(str,salt).toString();
	}

	public static void main(String[] args) {
		System.out.println(md5"1","java1234");

}
