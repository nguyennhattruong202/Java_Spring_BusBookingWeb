/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.repository.impl;

import com.btl.pojo.Coach;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.btl.repository.CoachRepository;
import org.hibernate.query.Query;

@Repository
@Transactional
public class CoachRepositoryImpl implements CoachRepository {

    @Autowired
    public LocalSessionFactoryBean sessionFactoryBean;
    @Autowired
    public Environment env;

    @Override
    public List<Coach> getCoach(int page, boolean active) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Coach> criteriaQuery = criteriaBuilder.createQuery(Coach.class);
        Root root = criteriaQuery.from(Coach.class);
        criteriaQuery.select(root).where(criteriaBuilder.equal(root.get("active"), active));
        Query<Coach> query = session.createQuery(criteriaQuery);
        if (page > 0) {
            int size = Integer.parseInt(env.getProperty("admin.content.pageSize").toString());
            query.setFirstResult((page - 1) * size);
            query.setMaxResults(size);
        }
        return query.getResultList();
    }

    @Override
    public long countCoach(boolean active) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Long> criteriaQuery = criteriaBuilder.createQuery(Long.class);
        Root root = criteriaQuery.from(Coach.class);
        criteriaQuery.select(criteriaBuilder.count(root))
                .where(criteriaBuilder.equal(root.get("active"), active));
        Query query = session.createQuery(criteriaQuery);
        return (long) query.getSingleResult();
    }

    @Override
    public boolean addCoach(Coach coach) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        try {
            session.save(coach);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

}
