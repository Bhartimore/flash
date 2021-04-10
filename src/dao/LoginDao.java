package dao;
import java.io.*;
import java.sql.*;
import modal.*;
public class LoginDao 
{
  Connection conn;
  PreparedStatement pst;
  ResultSet rs;
  String sql;
  public LoginDao() throws ClassNotFoundException, SQLException, IOException
  {
	conn=MyConnection.getConnection();  
  }
  public Integer add(Login login)throws SQLException
  {
	  sql="insert into login values(?,?,?)";
	  pst=conn.prepareStatement(sql);
	  pst.setString(1,login.getUserName());
	  pst.setString(2,login.getUserPassword());
	  pst.setString(3,login.getUserRole());
	  return pst.executeUpdate();
  }
  public Integer update(Login login)throws SQLException
  {
	  sql="update login set userPassword=? where userName=?";
	  pst=conn.prepareStatement(sql);
	  pst.setString(2,login.getUserName());
	  pst.setString(1,login.getUserPassword());
	  return pst.executeUpdate();
  }
  public Boolean validate (Login login)throws SQLException
  {
	  sql="select * from login where userName=? and userPassword=? and userRole=?";
	  pst=conn.prepareStatement(sql);
	  pst.setString(1,login.getUserName());
	  pst.setString(2,login.getUserPassword());
	  pst.setString(3,login.getUserRole());
	  rs=pst.executeQuery();
	  if(rs.next())
	  {
	  return true;
	  }
	  else
	  {
	  return false;
	  }
  }
}