package co.edu.sena.project2687351.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BasicConnectionSingleton {
    private static String url="jdbc:mysql://localhost:3308/myapp";
    private static String user="myapp";
    private static String pass="sena1234";
    private static Connection conn;

    public static Connection getInstance()
        throws SQLException{
        if (conn==null){
            conn=
                    DriverManager.getConnection(url,user,pass);
        }
        return conn;
    }
}
