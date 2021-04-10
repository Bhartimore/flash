package dao;
import java.sql.*;
import modal.*;
import java.util.*;
import java.io.*;
public class MenuDao 
{
  String sql;
  Connection conn;
  PreparedStatement pst;
  ResultSet rs;
  public MenuDao()throws SQLException,ClassNotFoundException,IOException
  {
	  conn=MyConnection.getConnection();   
  }
  public Integer addRecord(Menu e)throws SQLException
  {
	  sql="insert into menu values(?,?,?,?,?)";
	  pst=conn.prepareStatement(sql);
	  pst.setInt(1,e.getId());
	  pst.setString(2,e.getFoodName());
	  pst.setInt(3,e.getFoodQuantity());
	  pst.setInt(4,e.getFoodPrice());
	  pst.setInt(5,e.getTotal());
	  return pst.executeUpdate(); 
  }
  public Integer updateRecord(Menu e)throws SQLException
  {
	  sql="update menu set foodName=?,foodQuantity=? where id=?";
	  pst=conn.prepareStatement(sql);
	  pst.setInt(3,e.getId());
	  pst.setString(1,e.getFoodName());
	  pst.setInt(2,e.getFoodQuantity());
	  return pst.executeUpdate();
  }
  public Integer deleteRecord(Menu e)throws SQLException
  {
	  sql="delete from menu where foodName=?";
	  pst=conn.prepareStatement(sql);
	  pst.setString(1,e.getFoodName());
	  return pst.executeUpdate();
  }
  public Boolean findRecord(Menu e)throws SQLException
  {
	  sql="select * from menu where foodName=?";
	  pst=conn.prepareStatement(sql);
	  pst.setString(1,e.getFoodName());
	  rs=pst.executeQuery();
	  if(rs.next())
	  {
	  e.setId(rs.getInt(1));
	  e.setFoodName(rs.getString(2));
	  e.setFoodQuantity(rs.getInt(3)); 
	  e.setFoodPrice(rs.getInt(4));
	  return true;
	  }
	  else
	  return false;
  }
  public List<Menu> findAllRecord()throws SQLException
  {
	sql="select * from menu";
	pst=conn.prepareStatement(sql);
	rs=pst.executeQuery();
	List<Menu>l=new ArrayList<Menu>();
	while(rs.next())
	{
	 Menu e=new Menu();
	 e.setId(rs.getInt(1));
	 e.setFoodName(rs.getString(2));
	 e.setFoodQuantity(rs.getInt(3));
	 e.setFoodPrice(rs.getInt(4));
	 e.setTotal(rs.getInt(5));
	 l.add(e);
	}
	return l;
  }
  
 
	  
	  
  }
