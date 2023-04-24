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
import model.Person;

/**
 *
 * @author asus
 */
public class PersonDAO extends DBContext {

    //doc tat ca cac ban ghi tu table Student
    public List<Person> getAll() {
        List<Person> list = new ArrayList<>();
        String sql = "SELECT * FROM [Person]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Person s = new Person(rs.getString("Fullname"), rs.getString("DateOfBirth"), rs.getString("DateOfDeath"), rs.getString("Occupation"), rs.getString("Address"),rs.getString("PhoneNumber"),rs.getString("Description"), rs.getInt("ParentID"));
                list.add(s);
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return list;
    }

    public Person getPersonByPersonname(String personname) {
        Person person = new Person();
        String sql = "SELECT * FROM [Person] WHERE Personname = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, personname);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                person = new Person(rs.getString("Personname"), rs.getString("Password"), rs.getString("EmailAddress"));
                
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return person;
    }

    public void chagePassword(String personname, String newPassword) {
        String sql = "UPDATE [Person]\n"
                + "SET [Password] = ?\n"
                + "WHERE Personname = ?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, newPassword);
            st.setString(2, personname);
            
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insert(Person u) {
        String sql = "INSERT INTO [dbo].[Person]\n"
                + "           ([Personname]\n"
                + "           ,[Password]\n"
                + "           ,[EmailAddress]) VALUES (?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, u.getPersonname());
            st.setString(2, u.getPassword());
            st.setString(3, u.getEmailaddress());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public boolean loginCheck(String personname, String password) {
        String sql = "SELECT * FROM [Person] WHERE Personname = ? AND [Password] = ?";
        Person person = null;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, personname);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                person = new Person(rs.getString("Personname"), rs.getString("Password"), rs.getString("EmailAddress"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return (person != null);
    }

    public static void main(String[] args) {
        PersonDAO c = new PersonDAO();
        System.out.println(c.getPersonByPersonname("test1").getPassword());
    }

}
