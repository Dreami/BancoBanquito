/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bancoBanquitoPackage;

/**
 *
 * @author maple
 */
public class Account {
    private int accountNumber;
    private User user;
    private String type;
    private float amount;

    public Account(int accountNumber, User user, String type, float amount) {
        this.accountNumber = accountNumber;
        this.user = user;
        this.type = type;
        this.amount = amount;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 43 * hash + this.accountNumber;
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
        final Account other = (Account) obj;
        if (this.accountNumber != other.accountNumber) {
            return false;
        }
        return true;
    }

    public int getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(int accountNumber) {
        this.accountNumber = accountNumber;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }
    
    public void addAmount(float amount) {
        this.amount += amount;
    }
    
    public void substractAmount(float amount) {
        this.amount -= amount;
    }
}
