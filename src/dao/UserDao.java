package dao;
import java.io.*;
import java.sql.*;
import modal.*;
public class UserDao 
{
  Connection conn;
  PreparedStatement pst;
  ResultSet rs;
  String sql;
  public UserDao() throws ClassNotFoundException, SQLException, IOException
  {
	conn=MyConnection.getConnection();  
  }
  public Integer addS(User user)throws SQLException
  {
	  sql="insert into user values(?,?,?,?)";
	  pst=conn.prepareStatement(sql);
	  pst.setInt(1,user.getUserId());
	  pst.setString(2,user.getUserEmail());
	  pst.setInt(3,user.getUserNumber());
	  pst.setString(4,user.getUserAddress());
	  return pst.executeUpdate();
  }
}