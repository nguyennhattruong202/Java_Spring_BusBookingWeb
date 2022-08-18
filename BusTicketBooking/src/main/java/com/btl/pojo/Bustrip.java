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
@Table(name = "bustrip")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Bustrip.findAll", query = "SELECT b FROM Bustrip b"),
    @NamedQuery(name = "Bustrip.findById", query = "SELECT b FROM Bustrip b WHERE b.id = :id"),
    @NamedQuery(name = "Bustrip.findByPrice", query = "SELECT b FROM Bustrip b WHERE b.price = :price"),
    @NamedQuery(name = "Bustrip.findByActive", query = "SELECT b FROM Bustrip b WHERE b.active = :active")})
public class Bustrip implements Serializable {

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
    @OneToMany(mappedBy = "bustripId")
    private Set<Feedback> feedbackSet;
    @JoinColumn(name = "bus_id", referencedColumnName = "id")
    @ManyToOne
    private Bus busId;
    @JoinColumn(name = "employee_id", referencedColumnName = "id")
    @ManyToOne
    private Employee employeeId;
    @JoinColumn(name = "linebus_id", referencedColumnName = "id")
    @ManyToOne
    private LineBus linebusId;
    @OneToMany(mappedBy = "bustripId")
    private Set<SaleOrder> saleOrderSet;
    @OneToMany(mappedBy = "bustripId")
    private Set<DetailBustrip> detailBustripSet;

    public Bustrip() {
    }

    public Bustrip(Integer id) {
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

    public Bus getBusId() {
        return busId;
    }

    public void setBusId(Bus busId) {
        this.busId = busId;
    }

    public Employee getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Employee employeeId) {
        this.employeeId = employeeId;
    }

    public LineBus getLinebusId() {
        return linebusId;
    }

    public void setLinebusId(LineBus linebusId) {
        this.linebusId = linebusId;
    }

    @XmlTransient
    public Set<SaleOrder> getSaleOrderSet() {
        return saleOrderSet;
    }

    public void setSaleOrderSet(Set<SaleOrder> saleOrderSet) {
        this.saleOrderSet = saleOrderSet;
    }

    @XmlTransient
    public Set<DetailBustrip> getDetailBustripSet() {
        return detailBustripSet;
    }

    public void setDetailBustripSet(Set<DetailBustrip> detailBustripSet) {
        this.detailBustripSet = detailBustripSet;
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
        if (!(object instanceof Bustrip)) {
            return false;
        }
        Bustrip other = (Bustrip) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.btl.pojo.Bustrip[ id=" + id + " ]";
    }
    
}
