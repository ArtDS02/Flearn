package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Exam;

public class ExamDAO {

    static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;

    public static ArrayList<Exam> getListExams() {
        try {
            String query = "select * from Exam";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            ArrayList<Exam> list = new ArrayList<>();
            while (rs.next()) {
                Exam a = new Exam(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getInt(5));
                list.add(a);
            }
            return list;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public static void insertExam(String username, String password, String email, String phone) {
        String query = "INSERT INTO account([username],[passwords],[email],[phone]) VALUES(?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.executeQuery();

        } catch (Exception e) {
        }
    }

    public static void deleteExam(String id) {
        String query = "DELETE  FROM Exam  WHERE ida=?";
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement(query);
            ps.setInt(1, Integer.parseInt(id));
            System.out.println("Thanh cong");
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static Exam getExam(String id) {
        String query = "select * from account where ida=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, Integer.parseInt(id));
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Exam(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getInt(5));
            }
        } catch (Exception e) {
            System.out.println("Hello");
        }
        return null;
    }

    public static Exam getExamByName(String name) {
        String query = "select * from account where username = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Exam(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getInt(5));
            }
        } catch (Exception e) {
            System.out.println("Hello");
        }
        return null;
    }

    public static int checkName(String name) {
        String query = "select * from account where username = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            rs = ps.executeQuery();
            while (rs.next()) {
                return 1;
            }
        } catch (Exception e) {
            return 1;
        }
        return 0;
    }

    public void updateExam(int id, String username, String password, String email, String phone) {
        String query = "UPDATE Exam SET username = ?, passwords = ?, email = ?, phone = ? WHERE ida = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setInt(5, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        System.out.println(getListExams().get(1).toString()); 
//        insertExam("111","Nguyen Tien Thinh","111","111","111"); 
//        deleteExam("6"); 
//            System.out.println(getExamByName("admin").toString());
//            updateExam(4,"Nguyen Tien Thinh","1","111","Nguyen Tien Thinh");
//            System.out.println(checkName("ABC"));
    }
}
