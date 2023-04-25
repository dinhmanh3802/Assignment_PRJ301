/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.List;

/**
 *
 * @author asus
 */
public class Book {
    private int bid;
    private String btitle;
    private String publisherdate;
    private List<Integer> authors;

    public Book(int bid, String btitle, String publisherdate, List<Integer> authors) {
        this.bid = bid;
        this.btitle = btitle;
        this.publisherdate = publisherdate;
        this.authors = authors;
    }

    public Book() {
    }

    public Book(int bid, String btitle, String publisherdate) {
        this.bid = bid;
        this.btitle = btitle;
        this.publisherdate = publisherdate;
    }

    public Book(String btitle, String publisherdate, List<Author> authors) {
        this.btitle = btitle;
        this.publisherdate = publisherdate;
        this.authors = authors;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getBtitle() {
        return btitle;
    }

    public void setBtitle(String btitle) {
        this.btitle = btitle;
    }

    public String getPublisherdate() {
        return publisherdate;
    }

    public void setPublisherdate(String publisherdate) {
        this.publisherdate = publisherdate;
    }

    public List<Integer> getAuthors() {
        return authors;
    }

    public void setAuthors(List<Integer> authors) {
        this.authors = authors;
    }
    
    
    
}   
