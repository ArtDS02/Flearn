/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Question;
import context.DBContext;
import java.sql.Connection;

/**
 *
 * @author quoct
 */
public class QuestionDAO extends DBContext {
    
    static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;

    public static Question getQuestionById(int id) {
        String sql = "Select * From Question Where QuestionId = ?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                Question question = new Question(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)
                );
                return question;
            }
        } catch (Exception e) {
        }
        return null;
    }
    public static void main(String[] args) {
//        System.out.println(getQuestionById(1));
    }
    
    
}
