/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.User;

/**
 *
 * @author asus
 */
public class UserDAO extends DBContext {

    //doc tat ca cac ban ghi tu table Student
    public List<User> getAll() {
        List<User> list = new ArrayList<>();
        String sql = "SELECT * FROM [User]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User s = new User(rs.getString("Username"), rs.getString("Password"), rs.getString("EmailAddress"));
                list.add(s);
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return list;
    }

    public User getUserByUsername(String username) {
        User user = new User();
        String sql = "SELECT * FROM [User] WHERE Username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                user = new User(rs.getString("Username"), rs.getString("Password"), rs.getString("EmailAddress"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return user;
    }

    public void chagePassword(String username, String newPassword) {
        String sql = "UPDATE [User]\n"
                + "SET [Password] = ?\n"
                + "WHERE Username = ?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, newPassword);
            st.setString(2, username);
            
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insert(User u) {
        String sql = "INSERT INTO [dbo].[User]\n"
                + "           ([Username]\n"
                + "           ,[Password]\n"
                + "           ,[EmailAddress]) VALUES (?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, u.getUsername());
            st.setString(2, u.getPassword());
            st.setString(3, u.getEmailaddress());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public boolean loginCheck(String username, String password) {
        String sql = "SELECT * FROM [User] WHERE Username = ? AND [Password] = ?";
        User user = null;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                user = new User(rs.getString("Username"), rs.getString("Password"), rs.getString("EmailAddress"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return (user != null);
    }

    public static void main(String[] args) {
        UserDAO c = new UserDAO();
        System.out.println(c.getUserByUsername("test").getUsername() == null );
    }

}
