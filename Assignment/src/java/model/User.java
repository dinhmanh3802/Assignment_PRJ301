/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author asus
 */
public class User {
    private String username;
    private String password;
    private String Emailaddress;

    public User() {
    }

    public User(String username, String password, String Emailaddress) {
        this.username = username;
        this.password = password;
        this.Emailaddress = Emailaddress;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmailaddress() {
        return Emailaddress;
    }

    public void setEmailaddress(String Emailaddress) {
        this.Emailaddress = Emailaddress;
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }
    
}
