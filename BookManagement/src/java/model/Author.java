/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author asus
 */
public class Author {
    private int aID;
    private String aName;

    public Author() {
    }

    public Author(int aID, String aName) {
        this.aID = aID;
        this.aName = aName;
    }

    public Author(String aName) {
        this.aName = aName;
    }

    public int getaID() {
        return aID;
    }

    public void setaID(int aID) {
        this.aID = aID;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName;
    }
    
    
}
