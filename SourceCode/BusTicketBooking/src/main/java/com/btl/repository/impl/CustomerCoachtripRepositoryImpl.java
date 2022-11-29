/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.repository.impl;

import com.btl.pojo.Coach;
import com.btl.pojo.Coachline;
import com.btl.pojo.Coachtrip;
import com.btl.repository.CustomerCoachtripRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class CustomerCoachtripRepositoryImpl implements CustomerCoachtripRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Object[]> orderCoachTrip() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> criteriaQuery = criteriaBuilder.createQuery(Object[].class);
        Root rootCoachtrip = criteriaQuery.from(Coachtrip.class);
        Root rootCoach = criteriaQuery.from(Coach.class);
        Root rootCoachline = criteriaQuery.from(Coachline.class);
        criteriaQuery.where(criteriaBuilder.equal(rootCoachtrip.get("coachId"), rootCoach.get("id")),
                criteriaBuilder.equal(rootCoachtrip.get("coachlineId"), rootCoachline.get("id")),
                criteriaBuilder.equal(rootCoachtrip.get("active"), true));
        criteriaQuery.multiselect(rootCoachtrip.get("id"),
                rootCoachline.get("departure"),
                rootCoachline.get("destination"),
                rootCoachline.get("distance"),
                rootCoachtrip.get("price"),
                rootCoach.get("type"));
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

}
