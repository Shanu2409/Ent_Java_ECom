/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author shanu
 */
public class DbConnect2 {
    public static String getCon() {
        System.out.println("whuuuwwwwwwwww");
        try {
            System.out.println("11");
            Class.forName("org.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "notadmin");
        } catch (Exception e) {
            System.out.println("loggggggggggggggggggggg");
            return e.getMessage();
        }
        finally{
            return "77777777777777777777777777777";
        }
    }
}
