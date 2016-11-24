/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbAccess;

import businessRules.Trans;
import businessRules.User;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

/**
 *
 * @author Sage
 */
public class TransDB {
    
     public static void insert(Trans transaction) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(transaction);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }


    public static List<Trans> selectTrans(User user) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT t FROM Trans t "
                + "WHERE t.account = :user";
        TypedQuery<Trans> q = em.createQuery(qString, Trans.class);
        q.setParameter("user", user);
        List<Trans> transactions;
        try {
            transactions = q.getResultList();
            if(transactions == null || transactions.isEmpty())
                transactions = null;
        } 
        finally {
            em.close();
        }
        return transactions;
    }

}

