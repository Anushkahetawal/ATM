package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.ATM;
import myconnection.OnlineConnection;

public class Atmdao {
    Connection con=OnlineConnection.getConnection();
    PreparedStatement ps=null;
    ResultSet rs=null;
    public boolean checkLogin(int ac,int pin)
    {
        try{
        String sql="select * from user where acc_num=? and pin=?";
        ps=con.prepareStatement(sql);
        ps.setInt(1, ac);
        ps.setInt(2, pin);
        
        rs=ps.executeQuery();
        if(rs.next())
            return true;
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return false;
    }
    public ATM searchByacc_num(int acc_num)
    {
        ATM A=new ATM();
        try{
           String sql="select * from user where acc_num=?";
           ps=con.prepareStatement(sql);
           ps.setInt(1, acc_num);
           rs=ps.executeQuery();
           if(rs.next())
           {
               A.setAcc_no(rs.getInt(1));
               A.setFname(rs.getString(2));
               A.setLname(rs.getString(3));
               A.setDob(rs.getDate(4));
               A.setAdd(rs.getString(5));
               A.setPin(rs.getInt(6));
               A.setEdu(rs.getString(7));
               A.setOcc(rs.getString(8));
               
               A.setPhone(rs.getString(9));
               A.setBalance(rs.getInt(10));
           }
           else
               A=null;
            
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return A;
    }
    public boolean updateBalance(int total,int acc_num)
    {
        try{
            String sql="update user set balance=? where acc_num=?";
            ps=con.prepareStatement(sql);
            ps.setInt(1, total);
            ps.setInt(2, acc_num);
            int n;
            n=ps.executeUpdate();
            if(n>0)
                return true;
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return false;
    }
    public boolean updatePin(int pin1,int acc_num)
    {
        try{
            String sql="update user set pin=? where acc_num=?";
            ps=con.prepareStatement(sql);
            ps.setInt(1,pin1 );
            ps.setInt(2, acc_num);
            int n;
            n=ps.executeUpdate();
            if(n>0)
                return true;
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return false;
    }
    public boolean insertUser(ATM A)
      {
          try{
              String sql;
              sql="insert into customer values(?,?,?,?,?,?,?,?,?)";
              ps=con.prepareStatement(sql);
              ps.setInt(1, A.getAcc_no());
              ps.setString(2, A.getFname());
              ps.setString(3, A.getLname());
              ps.setDate(4, A.getDob());
              ps.setString(5, A.getAdd());
              ps.setInt(6, A.getPin());
              ps.setString(7, A.getEdu());
              ps.setString(8, A.getOcc());
              ps.setString(9, A.getPhone());
              
              int n;
              n = ps.executeUpdate();
              if(n>0)
                  return true;
                   
              
          }
          catch(Exception e)
          {
              System.out.println(e);
           }  
          return false;

      }

}
