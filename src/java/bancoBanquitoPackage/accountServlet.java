/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bancoBanquitoPackage;

import java.io.IOException;
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
public class accountServlet extends HttpServlet {
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
        s = request.getSession();
        accounts = (ArrayList<Account>) sc.getAttribute("Accounts");
        if(accounts == null) {
            accounts = new ArrayList<>();
        }
        
        s.removeAttribute("clientNumError");
        s.removeAttribute("accNumError");
        s.removeAttribute("amountError");
        s.removeAttribute("accCreated");
        
        
        String client_num = request.getParameter("client_num");
        String acc_num = request.getParameter("acc_num");
        String acc_type = request.getParameter("acc_type");
        String amount = request.getParameter("amount");
        
        if(!isNumeric(client_num)) {
            s.setAttribute("clientNumError", "<p class='input_error'>Numero de cliente no valido.</p>");
        } else if (!isNumeric(acc_num)){
            s.setAttribute("accNumError", "<p class='input_error'>Numero de cuenta no valido.</p>");
        } else if(!isNumeric(amount)) {
            s.setAttribute("amountError", "<p class='input_error'>Cantidad de monto no valido.</p>");
        } else {
            s.setAttribute("accCreated", "<div class='alert alert-success'>La cuenta <b>" + acc_num + "</b> fue creada exitosamente</div>");
        }
        
        response.sendRedirect("alta_cuenta.jsp");
    }
    
    private boolean isNumeric(String n) {
        //En lugar de \\d para evitar entradas con dos decimales, i.e. 9.00.1
        return n.matches("[0-9]*\\.?[0-9]*");
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
