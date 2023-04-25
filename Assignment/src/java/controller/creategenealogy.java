/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.GenealogyDAO;
import dal.PersonDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Genealogy;
import model.Person;

/**
 *
 * @author asus
 */
public class creategenealogy extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet creategenealogy</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet creategenealogy at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        if(request.getParameter("fullname") == "" || request.getParameter("genealogytitle") == ""){
            response.sendRedirect("genealogycreate.jsp");
        }else{
        
        String fullname = request.getParameter("fullname");
        String dateOfBirth = request.getParameter("dateofbirth");
        String dateOfDeath = request.getParameter("dateofdeath");
        String occupation = request.getParameter("occupation");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phonenumber");
        String description = request.getParameter("discription");
        
        PersonDAO personDAO = new PersonDAO();
        Person person = new Person(fullname,dateOfBirth,dateOfDeath,occupation,address,phoneNumber,description,0);
        personDAO.insert(person);
        
        int headerID = personDAO.searchHeaderPersonID(fullname);
        
        GenealogyDAO genealogyDAO = new GenealogyDAO();
        String genealogyTitle = request.getParameter("genealogytitle");
        Genealogy genegoly = new Genealogy(genealogyTitle, headerID);
        genealogyDAO.insert(genegoly);
        response.sendRedirect("edit?headerID=" + headerID);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}