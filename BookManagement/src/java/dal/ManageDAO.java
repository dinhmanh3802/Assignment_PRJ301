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
import model.Author;
import model.Book;

/**
 *
 * @author asus
 */
public class ManageDAO extends DBContext {

    //doc tat ca cac ban ghi tu table Student
    public List<Book> getAll() {
        List<Book> list = new ArrayList<>();
        String sql1 = "SELECT * FROM Book";
        String sql2 = "SELECT * FROM Book_Author WHERE A_ID = ?";
        try {
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs1 = st1.executeQuery();
            while (rs1.next()) {
                Book s = new Book(rs1.getInt("B_ID"), rs1.getString("B_Title"), rs1.getString("B_Date"));
                PreparedStatement st2 = connection.prepareStatement(sql2);
                st2.setInt(1, s.getBid());
                ResultSet rs2 = st2.executeQuery();
                List<Integer> alist = new ArrayList<>();
                while (rs1.next()) {
                    int a = rs2.getInt("A_ID");
                    alist.add(a);
                }
                s.setAuthors(alist);
                list.add(s);
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return list;
    }

    public boolean authorCheck(int bookID) {
        String sql = "SELECT * FROM Book_Author WHERE B_ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, bookID);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                if(rs != null)
                return true;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }

//    public Student findStudent(int id){
//        String sql = "SELECT * FROM Student WHERE id = ?";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            st.setInt(1, id);
//            ResultSet rs = st.executeQuery();
//            if (rs.next()) {                
//                Student s = new Student(rs.getInt("id"), rs.getString("name"), rs.getBoolean("gender"), rs.getString("dob")); 
//                return s;
//            }
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//        return null;
//      
//    }
//    
//    public void update(Student student){
//         String sql = "UPDATE Student SET name = ?, gender = ?, dob = ? WHERE id = ?";
//         try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            st.setString(1, student.getName());
//            st.setBoolean(2, student.getGender());
//            st.setString(3, student.getDob());
//            st.setInt(4, student.getId());
//            st.executeUpdate();
//        } catch (SQLException e) {
//             System.out.println(e);
//        }
//    }
//    
//    public void delete(int id){
//         String sql = "DELETE FROM Student WHERE id = ?";
//         try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            st.setInt(1, id);
//            st.executeUpdate();
//        } catch (SQLException e) {
//             System.out.println(e);
//        }
//    }
//    
//    public void add(Student s){
//         String sql = "SET IDENTITY_INSERT Student ON \n INSERT INTO Student(id,name, gender, dob) VALUES (?,?,?,? )";
//         try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            st.setInt(1, s.getId());
//            st.setString(2, s.getName());
//            st.setBoolean(3, s.getGender());
//            st.setString(4, s.getDob());
//            st.executeUpdate();
//        } catch (SQLException e) {
//             System.out.println(e);
//        }
//    }
//    
//    public List<Student> getNum(int n){
//        List<Student> list = new ArrayList<>();
//        String sql = "SELECT TOP " + Integer.toString(n) + " * FROM Student";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {                
//                Student s = new Student(rs.getInt("id"), rs.getString("name"), rs.getBoolean("gender"), rs.getString("dob")); 
//                list.add(s);
//            }
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//        
//        return list;
//    }
    public static void main(String[] args) {
        ManageDAO c=new ManageDAO();

        System.out.println(c.authorCheck(2));
    }
}
