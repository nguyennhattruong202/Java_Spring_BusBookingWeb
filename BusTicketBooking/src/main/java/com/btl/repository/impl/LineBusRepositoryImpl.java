/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.repository.impl;

import com.btl.pojo.LineBus;
import com.btl.repository.LineBusRepository;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
@PropertySource("classpath:messages.properties")
public class LineBusRepositoryImpl implements LineBusRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private Environment env;

    @Override
    public List<LineBus> getAllLineBus(Map<String, String> params, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<LineBus> criteriaQuery = criteriaBuilder
                .createQuery(LineBus.class);
        Root root = criteriaQuery.from(LineBus.class);
        criteriaQuery.select(root);
        if (params != null) {
            List<Predicate> predicate = new ArrayList<>();
            String kwName = params.get("kwName");
            if (kwName != null && !kwName.isEmpty()) {
                Predicate p = criteriaBuilder.like(root.get("name")
                        .as(String.class), String.format("%%%s%%", kwName));
                predicate.add(p);
            }
            criteriaQuery.where(predicate.toArray(new Predicate[]{}));
        }
        Query query = session.createQuery(criteriaQuery);
        if (page > 0) {
            int size = Integer.parseInt(env.getProperty("admin.content.pageSize").toString());
            int start = (page - 1) * size;
            query.setFirstResult(start);
            query.setMaxResults(size);
        }
        return query.getResultList();
    }

    @Override
    public int countLineBus() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query query = session.createQuery("SELECT count(*) From LineBus");
        return Integer.parseInt(query.getSingleResult().toString());
    }

    @Override
    public boolean addLineBus(LineBus lb) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(lb);
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

}
