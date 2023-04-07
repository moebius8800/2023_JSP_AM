package com.koreaIT.java.am.config;

public class Config {
	
	public static String getDBUrl() {
		return "jdbc:mysql://127.0.0.1:3306/JSPTest?useUnicode=true&characterEncoding=utf8&autoReconnect=true&serverTimezone=Asia/Seoul&useOldAliasMetadataBehavior=true&zeroDateTimeNehavior=convertToNull";
	}
	
	public static String getDBUser() {
		return "root";
	}
	
	public static String getDBPassWd() {
		return "";
	}
	
	public static String getDBDriverName() {
		return "com.mysql.jdbc.Driver";
	}
	
}
