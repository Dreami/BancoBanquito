/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bancoBanquitoPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
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
public class setAccountServlet extends HttpServlet {
    private ArrayList<Account> accounts;
    private HttpSession s;
    private ServletContext sc;
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
        sc = getServletContext();
        accounts = (ArrayList<Account>) sc.getAttribute("Accounts");
        if(accounts == null) {
            accounts = new ArrayList<>();
        }
        s = request.getSession();
        s.removeAttribute("editSuccess");
        int acc_num = Integer.parseInt(request.getParameter("acc_num"));
        Account acc = searchAccount(acc_num);
        
        acc.setType(request.getParameter("nextType"));
        acc.setAmount(Float.parseFloat(request.getParameter("nextAmount")));
        
        int index = accounts.indexOf(acc);
        
        accounts.set(index, acc);
        
        sc.setAttribute("Accounts", accounts);
        s.setAttribute("editSuccess", "<div class='alert alert-success'>Cuenta editada exitosamente</div>");
        response.sendRedirect("editarClientes.jsp");
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
    private Account searchAccount(int acc_num) {
        for(Account a : accounts) {
            if(a.getAccountNumber() == acc_num) {
                return a;
            }
        }
        return null;
    }
}
