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
    public void insert(Person p) {
        String sql = "INSERT INTO [dbo].[Person]\n"
                + "           ([Fullname]\n"
                + "           ,[DateOfBirth]\n"
                + "           ,[DateOfDeath]\n"
                + "           ,[Occupation]\n"
                + "           ,[Address]\n"
                + "           ,[PhoneNumber]\n"
                + "           ,[Description]\n"
                + "           ,[GenealogyID])\n"
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
            st.setInt(8, p.getGenealogyID());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        PersonDAO c = new PersonDAO();
        List<Person> list = c.findPersonby("Occupation", "sdvds");
       
        System.out.println(list);
      

    }

    public List<Person> getPersonInGenealogy(int id) {
        List<Person> list = new ArrayList<>();
        String sql = "SELECT * FROM [Person] WHERE GenealogyID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Person s = new Person(rs.getInt("ID"), rs.getString("Fullname"), rs.getString("DateOfBirth"), rs.getString("DateOfDeath"), rs.getString("Occupation"), rs.getString("Address"), rs.getString("PhoneNumber"), rs.getString("Description"), rs.getInt("ParentID"), rs.getInt("GenealogyID"));
                list.add(s);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public Person findPerson(int id) {
        Person s = new Person();
        String sql = "SELECT * FROM [Person] WHERE ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                s = new Person(rs.getInt("ID"), rs.getString("Fullname"), rs.getString("DateOfBirth"), rs.getString("DateOfDeath"), rs.getString("Occupation"), rs.getString("Address"), rs.getString("PhoneNumber"), rs.getString("Description"), rs.getInt("ParentID"), rs.getInt("GenealogyID"));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return s;
    }

    public List<Person> findPersonby(String option, String value) {
        List<Person> list = new ArrayList<>();
        String sql = "SELECT * FROM Person WHERE " + option + " LIKE ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + value + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Person s = new Person(rs.getInt("ID"), rs.getString("Fullname"), rs.getString("DateOfBirth"), rs.getString("DateOfDeath"), rs.getString("Occupation"), rs.getString("Address"), rs.getString("PhoneNumber"), rs.getString("Description"));
                list.add(s);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public void delete(int id) {
        String sql = "DELETE FROM Person WHERE ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(Person p) {
        String sql = "UPDATE [dbo].[Person]\n"
                + "   SET [Fullname] = ?\n"
                + "      ,[DateOfBirth] = ?\n"
                + "      ,[DateOfDeath] = ?\n"
                + "      ,[Occupation] = ?\n"
                + "      ,[Address] = ?\n"
                + "      ,[PhoneNumber] = ?\n"
                + "      ,[Description] = ?\n"
                + " WHERE ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, p.getFullname());
            st.setString(2, p.getDateOfBirth());
            st.setString(3, p.getDateOfDeath());
            st.setString(4, p.getOccupation());
            st.setString(5, p.getAddress());
            st.setString(6, p.getPhoneNumber());
            st.setString(7, p.getDescription());
            st.setInt(8, p.getID());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

}
