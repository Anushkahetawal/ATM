package myconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class OnlineConnection {
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver Load done");
        } catch (ClassNotFoundException e) {
            System.out.println(e);
            }
        
    }
    public static Connection getConnection()
    {
        Connection con=null;
        try{
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/atm","root","root");
            System.out.println("Connection done");
        }
        catch(SQLException e)
        {
            System.out.println(e); 
        }
        return con;
        
    }
}
