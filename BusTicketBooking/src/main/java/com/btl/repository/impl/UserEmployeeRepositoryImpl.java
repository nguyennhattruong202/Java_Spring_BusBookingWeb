/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.repository.impl;

import com.btl.pojo.Employee;
import com.btl.repository.UserEmployeeRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@PropertySource("classpath:messages.properties")
@Transactional
public class UserEmployeeRepositoryImpl implements UserEmployeeRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;
    @Autowired
    private Environment env;
    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public Employee getUserEmployeeByUserName(String username) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Employee> criteriaQuery = criteriaBuilder.createQuery(Employee.class);
        Root root = criteriaQuery.from(Employee.class);
        criteriaQuery.select(root).where(criteriaBuilder.equal(root.get("username"), username));
        Query query = session.createQuery(criteriaQuery);
        return (Employee) query.getSingleResult();
    }

    @Override
    public List<Employee> getEmployee(int page) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Employee> criteriaQuery = criteriaBuilder.createQuery(Employee.class);
        Root root = criteriaQuery.from(Employee.class);
        criteriaQuery.select(root).where(criteriaBuilder.equal(root.get("active"), true));
        Query query = session.createQuery(criteriaQuery);
        if (page > 0) {
            int size = Integer.parseInt(env.getProperty("admin.content.pageSize").toString());
            query.setFirstResult((page - 1) * size);
            query.setMaxResults(size);
        }
        return query.getResultList();
    }

    @Override
    public long countEmployee() {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Long> criteriaQuery = criteriaBuilder.createQuery(Long.class);
        Root root = criteriaQuery.from(Employee.class);
        criteriaQuery.select(criteriaBuilder.count(root));
        Query query = session.createQuery(criteriaQuery);
        return (long) query.getSingleResult();
    }

    @Override
    public boolean addEmployee(Employee employee) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        try {
            session.save(employee);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean checkOldPassword(String oldPassword) {
        Employee employee = this.getUserEmployeeByUserName(SecurityContextHolder.getContext().getAuthentication().getName());
        if (employee.getPassword().equals(passwordEncoder.encode(oldPassword))) {
            return true;
        }
        return false;

    }

    @Override
    public boolean changePassword(Employee employee, String newPassword) {
        return true;
    }

}
