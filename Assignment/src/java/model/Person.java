/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

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
    private int genealogyID;

    public int getGenealogyID() {
        return genealogyID;
    }

    public void setGenealogyID(int genealogyID) {
        this.genealogyID = genealogyID;
    }

    public Person(int ID, String fullname, String dateOfBirth, String dateOfDeath, String occupation, String address, String phoneNumber, String description) {
        this.ID = ID;
        this.fullname = fullname;
        this.dateOfBirth = dateOfBirth;
        this.dateOfDeath = dateOfDeath;
        this.occupation = occupation;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.description = description;
    }

  

    public Person(String fullname, String dateOfBirth, String dateOfDeath, String occupation, String address, String phoneNumber, String description, int parentID, int genealogyID) {
        this.fullname = fullname;
        this.dateOfBirth = dateOfBirth;
        this.dateOfDeath = dateOfDeath;
        this.occupation = occupation;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.description = description;
        this.parentID = parentID;
        this.genealogyID = genealogyID;
    }

    public Person(int ID, String fullname, String dateOfBirth, String dateOfDeath, String occupation, String address, String phoneNumber, String description, int parentID, int genealogyID) {
        this.ID = ID;
        this.fullname = fullname;
        this.dateOfBirth = dateOfBirth;
        this.dateOfDeath = dateOfDeath;
        this.occupation = occupation;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.description = description;
        this.parentID = parentID;
        this.genealogyID = genealogyID;
    }

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

    public Person(String fullname, String dateOfBirth, String dateOfDeath, String occupation, String address, String phoneNumber, String description, int genealogyid) {
        this.fullname = fullname;
        this.dateOfBirth = dateOfBirth;
        this.dateOfDeath = dateOfDeath;
        this.occupation = occupation;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.description = description;
        this.genealogyID = genealogyid;
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

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getDateOfDeath() {
        return dateOfDeath;
    }

    public void setDateOfDeath(String dateOfDeath) {
        this.dateOfDeath = dateOfDeath;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getParentID() {
        return parentID;
    }

    public void setParentID(int parentID) {
        this.parentID = parentID;
    }

    
}
