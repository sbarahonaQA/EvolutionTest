package Functions;

import org.apache.log4j.Logger;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBFactory {
    private static final Properties prop = new Properties();
    private static final InputStream in = DBFactory.class.getResourceAsStream("../db.properties");
    private static final Logger log = Logger.getLogger(DBFactory.class);

    public static Connection initConfig(){
        Connection connection = null;
        String connectionUrl;

        try {
            prop.load(in);
            String servidorBD = prop.getProperty("servidorBD");
            String nombreBD = prop.getProperty("nombreBD");
            String usuarioDB = prop.getProperty("usuarioDB");
            String contraseniaBD = prop.getProperty("contraseniaBD");

            connectionUrl =
                    "jdbc:sqlserver://"+ servidorBD +";"
                            + "database="+ nombreBD +";"
                            + "user="+ usuarioDB +";"
                            + "password="+ contraseniaBD +";";

            log.info("Connecting to Database...");
            connection = DriverManager.getConnection(connectionUrl);
            if (connection != null) {
                log.info("Connected to the Database...");
            }
        }
        // Handle any errors that may have occurred.
        catch (SQLException e) {
            log.error("Database Error", e);
        }
        catch (IOException e) {
            log.error("initConfig Error", e);
        }

        return connection;
    }
}
