///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package com.btl.repository.impl;
//
//import com.btl.pojo.TypeEmployee;
//import com.btl.repository.TypeEmployeeRepository;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Map;
//import javax.persistence.criteria.CriteriaBuilder;
//import javax.persistence.criteria.CriteriaQuery;
//import javax.persistence.criteria.Predicate;
//import javax.persistence.criteria.Root;
//import org.hibernate.Session;
//import org.hibernate.query.Query;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
//import org.springframework.stereotype.Repository;
//import org.springframework.transaction.annotation.Transactional;
//
//@Repository
//@Transactional
//public class TypeEmployeeRepositoryImpl implements TypeEmployeeRepository {
//    
//    @Autowired
//    private LocalSessionFactoryBean sessionFactory;
//    
//    @Override
//    public List<TypeEmployee> getTypeEmployee(Map<String, String> params) {
//        Session session = this.sessionFactory.getObject().getCurrentSession();
//        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
//        CriteriaQuery<TypeEmployee> criteriaQuery = criteriaBuilder.createQuery(TypeEmployee.class);
//        Root root = criteriaQuery.from(TypeEmployee.class);
//        criteriaQuery.select(root);
//        if (params != null) {
//            List<Predicate> predicates = new ArrayList<>();
//            String kwId = params.get("id");
//            if (kwId != null && !kwId.isEmpty()) {
//                Predicate pId = criteriaBuilder.equal(root.get("id"), Integer.parseInt(kwId));
//                predicates.add(pId);
//            }
//            String kwTypeName = params.get("name");
//            if (kwTypeName != null && !kwTypeName.isEmpty()) {
//                Predicate pName = criteriaBuilder.like(root.get("name").as(String.class), String.format("%%%s%%", kwTypeName));
//                predicates.add(pName);
//            }
//            String kwSalaryLevel = params.get("salaryLevel");
//            if (kwSalaryLevel != null && !kwSalaryLevel.isEmpty()) {
//                Predicate pSalaryLevel = criteriaBuilder.equal(root.get("salaryLevel").as(Long.class), Long.parseLong(kwSalaryLevel));
//                predicates.add(pSalaryLevel);
//            }
//            criteriaQuery.where(predicates.toArray(Predicate[]::new));
//        }
//        Query query = session.createQuery(criteriaQuery);
//        return query.getResultList();
//    }
//    
//}
