package co.edu.sena.project2687351.util;

import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.Connection;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL=
            " jdbc:mysql://localhost:3308/myapp";
    private static final String USER="myapp";
    private static final String PASS="sena1234";
    private static BasicDataSource pool;
    private static BasicDataSource getInstance() throws SQLException{
        if (pool==null){
            pool=new BasicDataSource();
            pool.setUrl(URL);
            pool.setUsername(USER);
            pool.setPassword(PASS);

            pool.setInitialSize(3);
            pool.setMinIdle(3);
            pool.setMaxIdle(8);
            pool.setMaxTotal(8);
        }
        return pool;
    }
public static Connection getConnection() throws SQLException{
        return getInstance().getConnection();
}
}
