/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bancoBanquitoPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author maple
 */
public class transferServlet extends HttpServlet {
    ArrayList<Account> accounts;
    ServletContext sc = getServletContext();
    HttpSession s;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        accounts = (ArrayList<Account>) sc.getAttribute("Accounts");
        
        int acc_withdraw = paramterToInt(request.getParameter("acc_withdraw"));
        int acc_deposit = paramterToInt(request.getParameter("acc_deposit"));
        String amount_txt = request.getParameter("amount");
        float amount;
        
        if(isNumeric(amount_txt)) {
            amount = Float.parseFloat(amount_txt);
            
        }
        
        response.sendRedirect("transferencias.jsp");
    }
    
    private boolean isNumeric(String n) {
        //En lugar de \\d para evitar entradas con dos decimales, i.e. 9.00.1
        return n.matches("[0-9]*\\.?[0-9]*");
    }
    
    private int paramterToInt(String s) {
        return Integer.parseInt(s);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
