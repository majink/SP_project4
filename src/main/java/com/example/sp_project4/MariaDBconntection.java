package com.example.sp_project4;

import org.mariadb.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MariaDBconntection {
    static Connection getConnection(){
        Connection conn = null;

        try {
            Class.forName("org.mariadb.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mariadb://~~~`", "p233_학번" , "비밀번호");

        } catch (ClassNotFoundException e) {
            System.out.println("드라이버 로드 오류!");
            throw new RuntimeException(e);
        } catch (SQLException e){
            System.out.println("DB 로드 오류!");
            throw new RuntimeException(e);
        }

        return conn;
    }

    // 확인 과정
//    public void main(String arg[]){
//        System.out.println("DB 연결");
//        Connection conn = MariaDBconntection.getConnection();
//
//        if(conn == null){
//            System.out.println("DB 연결 오류!");
//        }
//        else
//            System.out.println("DB 연결!");
//    }
}