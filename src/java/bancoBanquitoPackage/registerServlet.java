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
 * @author TecMilenio
 */
public class registerServlet extends HttpServlet {
    ArrayList<User> users = new ArrayList<User>();
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
        ServletContext sc = getServletContext();
        HttpSession s = request.getSession();
        users = (ArrayList<User>) sc.getAttribute("Users");
        
        if(users == null) {
            users = new ArrayList<>();
        }
        
        String name, lastname, bday, address, postalcode, city, state, country, phone, email, password1, password2;
        password1 = request.getParameter("password1");
        password2 = request.getParameter("password2");
        if(password1.equals(password2)) {
            s.removeAttribute("passwordErr");
            name = request.getParameter("name");
            lastname = request.getParameter("lastname");
            bday = request.getParameter("bday");
            address = request.getParameter("address");
            postalcode = request.getParameter("postalcode");
            city = request.getParameter("city");
            state = request.getParameter("state");
            country = request.getParameter("country");
            phone = request.getParameter("phone");
            email = request.getParameter("email");
            
            User user = new User(users.size() ,name, lastname, address, postalcode, city, state, country, bday, phone, email, password1);
            users.add(user);
            sc.setAttribute("Users", users);
            s.setAttribute("loggedUser", user);
        } else {
            s.setAttribute("passwordErr", "<p class='input_error'>Su contraseña no coincide.</p>");
            response.sendRedirect("registrar.jsp");
        }
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
