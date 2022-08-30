/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.repository.impl;

import com.btl.pojo.Employee;
import com.btl.repository.UserEmployeeRepository;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UserEmployeeRepositoryImpl implements UserEmployeeRepository {

    @Autowired
    private LocalSessionFactoryBean factoryBean;

    @Override
    public Employee getUserEmployeeByUserName(String user) {
        Session session = this.factoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Employee> criteriaQuery = criteriaBuilder.createQuery(Employee.class);
        Root root = criteriaQuery.from(Employee.class);
        criteriaQuery.select(root).where(criteriaBuilder.equal(root.get("username"), user));
        Query query = session.createQuery(criteriaQuery);
        return (Employee) query.getSingleResult();
    }

}
