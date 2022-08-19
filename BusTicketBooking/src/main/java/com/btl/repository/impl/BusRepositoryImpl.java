/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.repository.impl;

import com.btl.pojo.Bus;
import com.btl.repository.BusRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.CriteriaUpdate;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class BusRepositoryImpl implements BusRepository {

    @Autowired
    public LocalSessionFactoryBean sessionFactory;
    @Autowired
    public Environment env;

    @Override
    public List<Bus> getBus(String keyword) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> criteriaQuery = criteriaBuilder.createQuery(Object[].class);
        Root root = criteriaQuery.from(Bus.class);
        Predicate p1 = criteriaBuilder.equal(root.get("active"), true);
        if (keyword != null && !keyword.isEmpty()) {
            Predicate p2 = criteriaBuilder.like(root.get("name").as(String.class), String.format("%%%s%%", keyword));
            criteriaQuery.where(criteriaBuilder.and(p1, p2));
        } else {
            criteriaQuery.where(p1);
        }
        criteriaQuery.multiselect(root.get("id"),
                root.get("name"),
                root.get("licensePlates"),
                root.get("capacity"),
                root.get("manufacturer"),
                root.get("type"));
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

    @Override
    public boolean addBus(Bus bus) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(bus);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean deleteBus(int busId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
            CriteriaUpdate<Bus> criteriaUpdate = criteriaBuilder.createCriteriaUpdate(Bus.class);
            Root<Bus> root = criteriaUpdate.from(Bus.class);
            criteriaUpdate.set("active", false);
            criteriaUpdate.where(criteriaBuilder.equal(root.get("id"), busId));
            session.createQuery(criteriaUpdate).executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
