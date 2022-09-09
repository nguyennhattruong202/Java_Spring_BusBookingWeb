/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.repository.impl;

import com.btl.pojo.Customer;
import com.btl.repository.CustomerRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.CriteriaUpdate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@PropertySource("classpath:messages.properties")
@Transactional
public class CustomerRepositoryImpl implements CustomerRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;
    @Autowired
    private Environment env;

    @Override
    public List<Customer> getCustomer(int page, boolean active) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Customer> criteriaQuery = criteriaBuilder.createQuery(Customer.class);
        Root root = criteriaQuery.from(Customer.class);
        criteriaQuery.select(root).where(criteriaBuilder.equal(root.get("active"), active));
        Query<Customer> query = session.createQuery(criteriaQuery);
        if (page > 0) {
            int size = Integer.parseInt(env.getProperty("admin.content.pageSize").toString());
            query.setFirstResult((page - 1) * size);
            query.setMaxResults(size);
        }
        return query.getResultList();
    }

    @Override
    public long countCustomer(boolean active) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Long> criteriaQuery = criteriaBuilder.createQuery(Long.class);
        Root root = criteriaQuery.from(Customer.class);
        criteriaQuery.select(criteriaBuilder.count(root))
                .where(criteriaBuilder.equal(root.get("active"), active));
        Query query = session.createQuery(criteriaQuery);
        return (long) query.getSingleResult();
    }

    @Override
    public boolean deleteCustomer(int id) {
        boolean result = false;
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaUpdate<Customer> criteriaUpdate = criteriaBuilder.createCriteriaUpdate(Customer.class);
        Root root = criteriaUpdate.from(Customer.class);
        criteriaUpdate.set("active", false);
        criteriaUpdate.where(criteriaBuilder.equal(root.get("id"), id));
        int query = session.createQuery(criteriaUpdate).executeUpdate();
        if (query > 0) {
            result = true;
        }
        return result;
    }
}
