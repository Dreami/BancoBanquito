/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bancoBanquitoPackage;

import java.util.ArrayList;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 *
 * @author TecMilenio
 */
public class TestDummyConfig implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ArrayList<User> users = new ArrayList<>();
        users.add(new User("Admin", "Tester", "Tecmilenio", "010101", "Monterrey", "Nuevo Leon", "Mexico", "01/01/1991", "10000000", "dummy@tester.com", "a"));
        sce.getServletContext().setAttribute("Users", users);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
