/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.pojo;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ACER
 */
@Entity
@Table(name = "sale_order")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SaleOrder.findAll", query = "SELECT s FROM SaleOrder s"),
    @NamedQuery(name = "SaleOrder.findById", query = "SELECT s FROM SaleOrder s WHERE s.id = :id"),
    @NamedQuery(name = "SaleOrder.findByCraetedDate", query = "SELECT s FROM SaleOrder s WHERE s.craetedDate = :craetedDate"),
    @NamedQuery(name = "SaleOrder.findByNum", query = "SELECT s FROM SaleOrder s WHERE s.num = :num")})
public class SaleOrder implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "craeted_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date craetedDate;
    @Column(name = "num")
    private Integer num;
    @JoinColumn(name = "coachtrip_id", referencedColumnName = "id")
    @ManyToOne
    private Coachtrip coachtripId;
    @JoinColumn(name = "customer_id", referencedColumnName = "id")
    @ManyToOne
    private Customer customerId;
    @JoinColumn(name = "payment_id", referencedColumnName = "id")
    @ManyToOne
    private Payment paymentId;

    public SaleOrder() {
    }

    public SaleOrder(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCraetedDate() {
        return craetedDate;
    }

    public void setCraetedDate(Date craetedDate) {
        this.craetedDate = craetedDate;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Coachtrip getCoachtripId() {
        return coachtripId;
    }

    public void setCoachtripId(Coachtrip coachtripId) {
        this.coachtripId = coachtripId;
    }

    public Customer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Customer customerId) {
        this.customerId = customerId;
    }

    public Payment getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(Payment paymentId) {
        this.paymentId = paymentId;
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
        if (!(object instanceof SaleOrder)) {
            return false;
        }
        SaleOrder other = (SaleOrder) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.btl.pojo.SaleOrder[ id=" + id + " ]";
    }
    
}
