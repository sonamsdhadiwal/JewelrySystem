package mysqlconnection;

import java.sql.*;

public class DBConnection {
private Connection con;
private Statement st;
private ResultSet rs;

public DBConnection()
{
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vpsons");
        st=con.createStatement();
    }
    catch(Exception ex)
    {
        System.out.println("Error:"+ex);
    }
}
    public void getData()
    {
        try
        {
            String query = "select * from items";
            rs = st.executeQuery(query);
            System.out.println("Records in our database");
            while(rs.next())
            {
                String name = rs.getString("ID");
                System.out.println("Name:["+name+"]");
            }
        }
        catch(Exception ex)
        {
             System.out.println("Error:"+ex);
        }
    }

}
