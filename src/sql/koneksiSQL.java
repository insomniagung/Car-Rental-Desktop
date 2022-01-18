//koneksikeSQL
package sql;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class koneksiSQL {
 private static Connection connection;
 
 public static Connection getConnection() {
  if (connection == null) {
   try {
    DriverManager.registerDriver(new com.mysql.jdbc.Driver());
    connection=DriverManager.getConnection
    ("jdbc:mysql://localhost:3306/dbms_rentalmobil", "root","");
    System.out.println("Koneksi SQL Sukses");
   } 
   catch (SQLException ex) {
    System.out.println("Koneksi SQL Error");
   }
  }
  return connection;
 }
}
