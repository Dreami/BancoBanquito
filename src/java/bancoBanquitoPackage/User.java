/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bancoBanquitoPackage;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class User {
    private static final DateTimeFormatter DTF1 = DateTimeFormatter.ofPattern("dd/MM/yyyy");
    private static final DateTimeFormatter DTF2 = DateTimeFormatter.ofPattern("d/M/yyyy");
    private int id;
    private String name;
    private String lastname;
    private String address;
    private String postalcode;
    private String city;
    private String state;
    private String country;
    private LocalDate bday;
    private String phone;
    private String email;
    private String password;

    public User(int id, String name, String lastname, String address, String postalcode, String city, String state, String country, String bday, String phone, String email, String password) {
        this.id = id;
        this.name = name;
        this.lastname = lastname;
        this.address = address;
        this.postalcode = postalcode;
        this.city = city;
        this.state = state;
        this.country = country;
        this.bday = getDueDateFromString(bday);
        this.phone = phone;
        this.email = email;
        this.password = password;
    }
    
    private LocalDate getDueDateFromString(String dueDateText) {
        LocalDate ld = null;
        Pattern p = Pattern.compile("([0-9]{2})/([0-9]{2})/([0-9]{4})");
        Matcher m = p.matcher(dueDateText);
        try {
            if(m.matches()) {
                ld = LocalDate.parse(dueDateText, DTF1);
            } else {
                ld = LocalDate.parse(dueDateText, DTF2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ld;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 79 * hash + this.id;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final User other = (User) obj;
        if (this.id != other.id) {
            return false;
        }
        return true;
    }
    
    public String getBdayFormat() {
        DateTimeFormatter datetimeformatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        return this.bday.format(datetimeformatter);
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getLastname() {
        return lastname;
    }

    public String getAddress() {
        return address;
    }

    public String getPostalcode() {
        return postalcode;
    }

    public String getCity() {
        return city;
    }

    public String getState() {
        return state;
    }

    public String getCountry() {
        return country;
    }

    public LocalDate getBday() {
        return bday;
    }

    public String getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }
}
