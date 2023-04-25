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
                Person s = new Person(rs.getString("Fullname"), rs.getString("DateOfBirth"), rs.getString("DateOfDeath"), rs.getString("Occupation"), rs.getString("Address"), rs.getString("PhoneNumber"), rs.getString("Description"), rs.getInt("ParentID"));
                list.add(s);
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return list;
    }

//    public Person getPersonByPersonname(String personname) {
//        Person person = new Person();
//        String sql = "SELECT * FROM [Person] WHERE Personname = ?";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            st.setString(1, personname);
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {
//                person = new Person(rs.getString("Personname"), rs.getString("Password"), rs.getString("EmailAddress"));
//                
//            }
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//
//        return person;
//    }
    public int searchHeaderPersonID(String name) {
        String sql = "SELECT ID FROM [Person] WHERE ParentID = 0 AND Fullname = ?";
        int ID = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs = st.executeQuery();
            if (rs.next()) { 
                ID = rs.getInt("ID");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return ID;
    }

    public void insert(Person p) {
        String sql = "INSERT INTO [dbo].[Person]\n"
                + "           ([Fullname]\n"
                + "           ,[DateOfBirth]\n"
                + "           ,[DateOfDeath]\n"
                + "           ,[Occupation]\n"
                + "           ,[Address]\n"
                + "           ,[PhoneNumber]\n"
                + "           ,[Description]\n"
                + "           ,[ParentID])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, p.getFullname());
            st.setString(2, p.getDateOfBirth());
            st.setString(3, p.getDateOfDeath());
            st.setString(4, p.getOccupation());
            st.setString(5, p.getAddress());
            st.setString(6, p.getPhoneNumber());
            st.setString(7, p.getDescription());
            st.setInt(8, p.getParentID());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        PersonDAO c = new PersonDAO();
        Person p = new Person("fgh", "", "", "", "", "", "",0);
        c.insert(p);
        //System.out.println(c.searchHeaderPersonID("sadsa"));

    }

}
