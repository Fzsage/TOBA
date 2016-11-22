/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package businessRules;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 *
 * @author Sage
 */
@Entity
public class Account implements Serializable{
     @Id
     /* @GeneratedValue(strategy = GenerationType.AUTO)
     private Long accountID; */
     private String accountType;
     private double startingBal;
     @ManyToOne
     private User accountOwner;

    public Account() {
    }

    public Account(String accountType, double startingBal, User accountOwner) {
        this.accountType = accountType;
        this.startingBal = startingBal;
        this.accountOwner = accountOwner;
    }

    public void Credit (double amount){
        this.startingBal +=  amount;
    }
    
    public void Debit (double amount){
        this.startingBal -= amount;
    }

    public String getAccountType() {
        return accountType;
    }

    public double getStartingBal() {
        return startingBal;
    }

    public User getAccountOwner() {
        return accountOwner;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public void setStartingBal(double startingBal) {
        this.startingBal = startingBal;
    }

    @Override
    public String toString() {
        return "Account{" + "accountType=" + accountType + ", startingBal=" + startingBal + ", accountOwner=" + accountOwner + '}';
    }

      

}


