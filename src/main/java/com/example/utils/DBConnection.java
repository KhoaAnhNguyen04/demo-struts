package com.example.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DBConnection {

    public static Connection getConnection() throws Exception {

        Properties props = new Properties();
        props.load(DBConnection.class
                .getClassLoader()
                .getResourceAsStream("database.properties"));

        String url = props.getProperty("db.url");
        String user = props.getProperty("db.username");
        String password = props.getProperty("db.password");

        return DriverManager.getConnection(url, user, password);
    }
}