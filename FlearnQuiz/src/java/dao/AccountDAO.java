package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Account;

public class AccountDAO {

    static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;

    public static ArrayList<Account> getListAccounts() {
        try {
            String query = "select * from Account";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            ArrayList<Account> list = new ArrayList<>();
            while (rs.next()) {
                Account a = new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9));
                list.add(a);
            }
            return list;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public static void insertAccount(String username, String password, String email, String phone) {
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

    public static void deleteAccount(String id) {
        String query = "DELETE  FROM Account  WHERE ida=?";
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

    public static Account getAccount(String id) {
        String query = "select * from account where ida=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, Integer.parseInt(id));
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9));
            }
        } catch (Exception e) {
            System.out.println("Hello");
        }
        return null;
    }

    public static Account getAccountByName(String name) {
        String query = "select * from Account where UserName=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9));
            }
        } catch (Exception e) {
            return null;
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

    public void updateAccount(int id, String username, String password, String email, String phone) {
        String query = "UPDATE Account SET username = ?, passwords = ?, email = ?, phone = ? WHERE ida = ?";
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

    public Account login(String username, String password) {
        String sql = "select * from account\n"
                + "where UserName = ? and Password= ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), 0);
            }

        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String username) {
        String sql = "select * from account\n"
                + "where UserName = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9));
            }

        } catch (Exception e) {
        }
        return null;
    }

    public void registerAccount(String firstname, String lastname, String username, String password, String phone, String email, String dob, int role) {
        String sql = "INSERT INTO Account(FirstName, LastName, UserName, Password, Phone, Email, DOB, Role)\n"
                + "values(?,?,?,?,?,?,?,?)";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, firstname);
            ps.setString(2, lastname);
            ps.setString(3, username);
            ps.setString(4, password);
            ps.setString(5, phone);
            ps.setString(6, email);
            ps.setString(7, dob);
            ps.setInt(8, role);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account getAccountbyId(String id) {
        String sql = "select * from account\n"
                + "where AccountID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9));
            }

        } catch (Exception e) {
        }
        return null;
    }
    
        public void updateInfoAccount(String id, String first, String last, String phone, String email, String dob) {
        String sql = "update account\n"
                + "set FirstName=?, LastName=?, Phone=?, Email=?, DOB=?\n"
                + "where AccountID =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, first);
            ps.setString(2, last);
            ps.setString(3, phone);
            ps.setString(4, email);
            ps.setString(5, dob);
            ps.setString(6, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
    }


    public static void main(String[] args) {
//        System.out.println(getListAccounts().get(1).toString()); 
//        insertAccount("111","Nguyen Tien Thinh","111","111","111"); 
//        deleteAccount("6"); 
           AccountDAO dao = new AccountDAO();
           dao.updateInfoAccount("6", "Huy", "Nhat", "0794615827", "ntnh@gmail.com", "");
//        System.out.println(getAccountbyId("1"));
//            updateAccount(4,"Nguyen Tien Thinh","1","111","Nguyen Tien Thinh");
//            System.out.println(checkName("ABC"));
    }
}
