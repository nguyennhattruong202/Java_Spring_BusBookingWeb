/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ACER
 */
@Entity
@Table(name = "type_employee")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TypeEmployee.findAll", query = "SELECT t FROM TypeEmployee t"),
    @NamedQuery(name = "TypeEmployee.findById", query = "SELECT t FROM TypeEmployee t WHERE t.id = :id"),
    @NamedQuery(name = "TypeEmployee.findByName", query = "SELECT t FROM TypeEmployee t WHERE t.name = :name"),
    @NamedQuery(name = "TypeEmployee.findBySalaryLevel", query = "SELECT t FROM TypeEmployee t WHERE t.salaryLevel = :salaryLevel")})
public class TypeEmployee implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "name")
    private String name;
    @Column(name = "salary_level")
    private Long salaryLevel;
    @JsonIgnore
    @OneToMany(mappedBy = "typeEmployeeId")
    private Set<Employee> employeeSet;

    public TypeEmployee() {
    }

    public TypeEmployee(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getSalaryLevel() {
        return salaryLevel;
    }

    public void setSalaryLevel(Long salaryLevel) {
        this.salaryLevel = salaryLevel;
    }

    @XmlTransient
    public Set<Employee> getEmployeeSet() {
        return employeeSet;
    }

    public void setEmployeeSet(Set<Employee> employeeSet) {
        this.employeeSet = employeeSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TypeEmployee)) {
            return false;
        }
        TypeEmployee other = (TypeEmployee) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.btl.pojo.TypeEmployee[ id=" + id + " ]";
    }
    
}
