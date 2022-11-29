/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.pojo;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ACER
 */
@Entity
@Table(name = "coachtrip")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Coachtrip.findAll", query = "SELECT c FROM Coachtrip c"),
    @NamedQuery(name = "Coachtrip.findById", query = "SELECT c FROM Coachtrip c WHERE c.id = :id"),
    @NamedQuery(name = "Coachtrip.findByPrice", query = "SELECT c FROM Coachtrip c WHERE c.price = :price"),
    @NamedQuery(name = "Coachtrip.findByActive", query = "SELECT c FROM Coachtrip c WHERE c.active = :active")})
public class Coachtrip implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "price")
    private Long price;
    @Column(name = "active")
    private Boolean active;
    @OneToMany(mappedBy = "coachtripId")
    private Set<Feedback> feedbackSet;
    @OneToMany(mappedBy = "coachtripId")
    private Set<SaleOrder> saleOrderSet;
    @JoinColumn(name = "coach_id", referencedColumnName = "id")
    @ManyToOne
    private Coach coachId;
    @JoinColumn(name = "coachline_id", referencedColumnName = "id")
    @ManyToOne
    private Coachline coachlineId;
    @JoinColumn(name = "employee_id", referencedColumnName = "id")
    @ManyToOne
    private Employee employeeId;
    @OneToMany(mappedBy = "coachtripId")
    private Set<DetailCoachtrip> detailCoachtripSet;

    public Coachtrip() {
    }

    public Coachtrip(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    @XmlTransient
    public Set<Feedback> getFeedbackSet() {
        return feedbackSet;
    }

    public void setFeedbackSet(Set<Feedback> feedbackSet) {
        this.feedbackSet = feedbackSet;
    }

    @XmlTransient
    public Set<SaleOrder> getSaleOrderSet() {
        return saleOrderSet;
    }

    public void setSaleOrderSet(Set<SaleOrder> saleOrderSet) {
        this.saleOrderSet = saleOrderSet;
    }

    public Coach getCoachId() {
        return coachId;
    }

    public void setCoachId(Coach coachId) {
        this.coachId = coachId;
    }

    public Coachline getCoachlineId() {
        return coachlineId;
    }

    public void setCoachlineId(Coachline coachlineId) {
        this.coachlineId = coachlineId;
    }

    public Employee getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Employee employeeId) {
        this.employeeId = employeeId;
    }

    @XmlTransient
    public Set<DetailCoachtrip> getDetailCoachtripSet() {
        return detailCoachtripSet;
    }

    public void setDetailCoachtripSet(Set<DetailCoachtrip> detailCoachtripSet) {
        this.detailCoachtripSet = detailCoachtripSet;
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
        if (!(object instanceof Coachtrip)) {
            return false;
        }
        Coachtrip other = (Coachtrip) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.btl.pojo.Coachtrip[ id=" + id + " ]";
    }
    
}
