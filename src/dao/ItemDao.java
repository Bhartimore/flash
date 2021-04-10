package dao;
import java.sql.*;
import modal.*;
import java.util.*;
import java.io.*;
public class ItemDao 
{
  String sql;
  Connection conn;
  PreparedStatement pst;
  ResultSet rs;
  public ItemDao()throws SQLException,ClassNotFoundException,IOException
  {
	  conn=MyConnection.getConnection();   
  }
  public Integer addRecord(Item e)throws SQLException
  {
	  sql="insert into item values(?,?,?)";
	  pst=conn.prepareStatement(sql);
	  pst.setInt(1,e.getId());
	  pst.setString(2,e.getFoodName());
	  pst.setInt(3,e.getFoodPrice());
	  return pst.executeUpdate();
  }
  public Integer updateRecord(Item e)throws SQLException
  {
	  sql="update item set foodName=?,foodPrice=? where id=?";
	  pst=conn.prepareStatement(sql);
	  pst.setInt(3,e.getId());
	  pst.setString(1,e.getFoodName());
	  pst.setInt(2,e.getFoodPrice());
	  return pst.executeUpdate();
  }
  public Integer deleteRecord(Item e)throws SQLException
  {
	  sql="delete from item where foodName=?";
	  pst=conn.prepareStatement(sql);
	  pst.setString(1,e.getFoodName());
	  return pst.executeUpdate();
  }
  public Boolean findRecord(Item e)throws SQLException
  {
	  sql="select * from item where foodName=?";
	  pst=conn.prepareStatement(sql);
	  pst.setString(1,e.getFoodName());
	  rs=pst.executeQuery();
	  if(rs.next())
	  {
	  e.setId(rs.getInt(1));
	  e.setFoodName(rs.getString(2));
	  e.setFoodPrice(rs.getInt(3));
	  return true;
	  }
	  else
	  return false;
  }
  public List<Item> findAllRecord()throws SQLException
  {
	sql="select * from item";
	pst=conn.prepareStatement(sql);
	rs=pst.executeQuery();
	List<Item>l=new ArrayList<Item>();
	while(rs.next())
	{
	 Item e=new Item();
	 e.setId(rs.getInt(1));
	 e.setFoodName(rs.getString(2));
	 e.setFoodPrice(rs.getInt(3));
	 l.add(e);
	}
	return l;
  }
}

