package dao;
import java.sql.*;
import java.io.*;
import java.util.*;
public class MyConnection
{
  private static Connection conn;
  public static Connection getConnection()throws ClassNotFoundException,SQLException,IOException
  {
	  FileReader fr=new FileReader("C:\\Users\\bharti\\Desktop\\MyInfo.properties");
	  Properties p=new Properties();
	  p.load(fr);
	  String driverName=p.getProperty("driverName");
	  String url=p.getProperty("url");
	  String uname=p.getProperty("uname");
	  String upass=p.getProperty("upass");
	  if(conn==null)
	  {
		Class.forName(driverName);
		conn=DriverManager.getConnection(url,uname,upass);
	  }
	  return conn;
  }
}