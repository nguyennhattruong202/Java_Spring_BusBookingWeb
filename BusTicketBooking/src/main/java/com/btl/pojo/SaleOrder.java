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
import javax.validation.constraints.Size;
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
    @NamedQuery(name = "SaleOrder.findByCreatedDate", query = "SELECT s FROM SaleOrder s WHERE s.createdDate = :createdDate"),
    @NamedQuery(name = "SaleOrder.findByNum", query = "SELECT s FROM SaleOrder s WHERE s.num = :num"),
    @NamedQuery(name = "SaleOrder.findByFeedbackRate", query = "SELECT s FROM SaleOrder s WHERE s.feedbackRate = :feedbackRate"),
    @NamedQuery(name = "SaleOrder.findByFeedbackComment", query = "SELECT s FROM SaleOrder s WHERE s.feedbackComment = :feedbackComment"),
    @NamedQuery(name = "SaleOrder.findByFeedbackDate", query = "SELECT s FROM SaleOrder s WHERE s.feedbackDate = :feedbackDate")})
public class SaleOrder implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "created_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Column(name = "num")
    private Integer num;
    @Column(name = "feedback_rate")
    private Integer feedbackRate;
    @Size(max = 255)
    @Column(name = "feedback_comment")
    private String feedbackComment;
    @Column(name = "feedback_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date feedbackDate;
    @JoinColumn(name = "bus_trip_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private BusTrip busTripId;
    @JoinColumn(name = "customer_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Customer customerId;

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

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getFeedbackRate() {
        return feedbackRate;
    }

    public void setFeedbackRate(Integer feedbackRate) {
        this.feedbackRate = feedbackRate;
    }

    public String getFeedbackComment() {
        return feedbackComment;
    }

    public void setFeedbackComment(String feedbackComment) {
        this.feedbackComment = feedbackComment;
    }

    public Date getFeedbackDate() {
        return feedbackDate;
    }

    public void setFeedbackDate(Date feedbackDate) {
        this.feedbackDate = feedbackDate;
    }

    public BusTrip getBusTripId() {
        return busTripId;
    }

    public void setBusTripId(BusTrip busTripId) {
        this.busTripId = busTripId;
    }

    public Customer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Customer customerId) {
        this.customerId = customerId;
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
