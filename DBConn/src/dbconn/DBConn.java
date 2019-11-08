package dbconn;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DBConn {

    
    public static void main(String[] args) throws ClassNotFoundException {
        try(Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost/vip4143", "root","");
            Statement stmt= conn.createStatement();
            ResultSet res =stmt.executeQuery("select * from student ; ") )  {
            
            
            
                Class.forName("com.mysql.jdbc.Driver");
                while (res.next()) {
                    System.out.print("\t"+res.getInt(1)+"\t");
                    System.out.print("\t"+res.getString("StudentName")+"\t");
                    System.out.println("\t"+res.getString("Address")+"\t");
                }
                            
        } catch (SQLException ex) {
            Logger.getLogger(DBConn.class.getName()).log(Level.SEVERE, null, ex);
        }
     }
    
}
