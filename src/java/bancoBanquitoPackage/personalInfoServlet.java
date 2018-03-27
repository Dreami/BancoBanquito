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
public class personalInfoServlet extends HttpServlet {
    private ArrayList<User> users;
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
        users = (ArrayList<User>) sc.getAttribute("Users");
        s = request.getSession();
        User loggedUser = (User) s.getAttribute("loggedUser");
        if(users == null) {
            users = new ArrayList<>();
        }
        s.removeAttribute("changesSuccess");
        s.removeAttribute("passwordErr");
        String name, lastname, bday, address, postalcode, city, state, country, phone, email, password1, password2;
        password1 = request.getParameter("password1");
        password2 = request.getParameter("password2");
        if(password1.equals(password2)) {
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
            
            if(email.isEmpty()) {
                email = loggedUser.getEmail();
            }
            if(password1.isEmpty()) {
                password1 = loggedUser.getPassword();
            }
            User modifiedUser = new User(loggedUser.getId() ,name, lastname, address, postalcode, city, state, country, bday, phone, email, password1);
            int currentUserIndex = users.indexOf(loggedUser);
            users.set(currentUserIndex, modifiedUser);
            sc.setAttribute("Users", users);
            s.setAttribute("loggedUser", modifiedUser);
            s.setAttribute("changesSuccess", "<div class='alert alert-success'>Su informacion fue modificada.</div>");
            response.sendRedirect("cambiarDetalles.jsp");
        } else {
            s.setAttribute("passwordErr", "<p class='input_error'>Su contraseña no coincide.</p>");
            response.sendRedirect("cambiarDetalles.jsp");
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
