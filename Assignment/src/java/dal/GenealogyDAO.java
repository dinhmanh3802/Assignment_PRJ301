
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Genealogy;

/**
 *
 * @author asus
 */
public class GenealogyDAO extends DBContext {

    //doc tat ca cac ban ghi tu table Student
    public List<Genealogy> getAll() {
        List<Genealogy> list = new ArrayList<>();
        String sql = "SELECT * FROM [Genealogy]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Genealogy s = new Genealogy(rs.getInt("ID"), rs.getString("Genealogytitle"));
                list.add(s);
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return list;
    }

    public Genealogy getGenealogyByGenealogytitle(String genealogytitle) {
        Genealogy genealogy = new Genealogy();
        String sql = "SELECT * FROM [Genealogy] WHERE Genealogytitle = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, genealogytitle);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                genealogy = new Genealogy(rs.getString("Genealogytitle"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return genealogy;
    }


    public void insert(Genealogy u) {
        String sql = "INSERT INTO [dbo].[Genealogy]\n"
                + "           ([Genealogytitle] VALUES (?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, u.getGenealogyTitle());
    
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    
    public static void main(String[] args) {
        GenealogyDAO c = new GenealogyDAO();
        Genealogy u = new Genealogy("TEN");
        c.insert(u);
    }

    public void delete(int id){
         String sql = "DELETE FROM Genealogy WHERE ID = ?";
         try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
             System.out.println(e);
        }
    }

}

