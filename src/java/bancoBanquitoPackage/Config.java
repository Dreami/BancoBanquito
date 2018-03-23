package bancoBanquitoPackage;

import java.util.ArrayList;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class Config implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ArrayList<User> users = new ArrayList<>();
        User dummy = new User(1, "Admin", "Tester", "Tecmilenio", "010101", "Monterrey", "Nuevo Leon", "Mexico", "01/01/1991", "10000000", "dummy@tester.com", "a");
        users.add(dummy);
        sce.getServletContext().setAttribute("Users", users);
        
        ArrayList<Account> accounts = new ArrayList<>();
        accounts.add(new Account(954, dummy, "Ahorro", 500f));
        accounts.add(new Account(955, dummy, "Credito", 700f));
        accounts.add(new Account(956, dummy, "Cheques", 100f));
        sce.getServletContext().setAttribute("Accounts", accounts);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
