/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Question;

/**
 *
 * @author quoct
 */
public class CollectionDAO {
    static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;


    public static List<Question> getCollectionById(int id) {
        String sql = "Select * From Collection Where CollectionDetailID = ?";
        List<Question> list = new ArrayList<>();
        QuestionDAO questionDAO = new QuestionDAO();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(questionDAO.getQuestionById(rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int countNumInCollectionById(int id) {
        String sql = "Select Count(*) From Collection Where CollectionDetailID = " + id;

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }
    public static void main(String[] args) {
        System.out.println(getCollectionById(1));
    }

}
