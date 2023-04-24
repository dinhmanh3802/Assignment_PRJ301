/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author asus
 */
public class Person {
    private int ID;
    private String fullname;
    private String dateOfBirth;
    private String dateOfDeath;
    private String occupation;
    private String address;
    private String phoneNumber;
    private String description;
    private int parentID;

    public Person() {
    }

    public Person(int ID, String fullname, String dateOfBirth, String dateOfDeath, String occupation, String address, String phoneNumber, String description, int parentID) {
        this.ID = ID;
        this.fullname = fullname;
        this.dateOfBirth = dateOfBirth;
        this.dateOfDeath = dateOfDeath;
        this.occupation = occupation;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.description = description;
        this.parentID = parentID;
    }

    public Person(String fullname, String dateOfBirth, String dateOfDeath, String occupation, String address, String phoneNumber, String description, int parentID) {
        this.fullname = fullname;
        this.dateOfBirth = dateOfBirth;
        this.dateOfDeath = dateOfDeath;
        this.occupation = occupation;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.description = description;
        this.parentID = parentID;
    }

    public Person(String fullname, String dateOfBirth, String dateOfDeath, String occupation, String address, String phoneNumber, String description) {
        this.fullname = fullname;
        this.dateOfBirth = dateOfBirth;
        this.dateOfDeath = dateOfDeath;
        this.occupation = occupation;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.description = description;
    }
    
    
    
    
}
