/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author asus
 */
public class Genealogy {
    private int ID; 
    private String genealogyTitle;

    
    public Genealogy() {
    }

    public Genealogy(int ID, String genealogyTitle) {
        this.ID = ID;
        this.genealogyTitle = genealogyTitle;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getGenealogyTitle() {
        return genealogyTitle;
    }

    public void setGenealogyTitle(String genealogyTitle) {
        this.genealogyTitle = genealogyTitle;
    }

    
    public Genealogy(String genealogyTitle) {
        this.genealogyTitle = genealogyTitle;
    }


    
    
    
}
