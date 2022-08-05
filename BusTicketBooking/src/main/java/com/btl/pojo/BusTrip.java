/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ACER
 */
@Entity
@Table(name = "bus_trip")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "BusTrip.findAll", query = "SELECT b FROM BusTrip b"),
    @NamedQuery(name = "BusTrip.findById", query = "SELECT b FROM BusTrip b WHERE b.id = :id"),
    @NamedQuery(name = "BusTrip.findByName", query = "SELECT b FROM BusTrip b WHERE b.name = :name"),
    @NamedQuery(name = "BusTrip.findByDateTime", query = "SELECT b FROM BusTrip b WHERE b.dateTime = :dateTime"),
    @NamedQuery(name = "BusTrip.findByPrice", query = "SELECT b FROM BusTrip b WHERE b.price = :price")})
public class BusTrip implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "name")
    private String name;
    @Column(name = "date_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateTime;
    @Column(name = "price")
    private Long price;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "busTripId")
    private Set<SaleOrder> saleOrderSet;
    @JoinColumn(name = "bus_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Bus busId;
    @JoinColumn(name = "employee_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private EmployeeUser employeeId;
    @JoinColumn(name = "line_bus_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private LineBus lineBusId;

    public BusTrip() {
    }

    public BusTrip(Integer id) {
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

    public Date getDateTime() {
        return dateTime;
    }

    public void setDateTime(Date dateTime) {
        this.dateTime = dateTime;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    @XmlTransient
    public Set<SaleOrder> getSaleOrderSet() {
        return saleOrderSet;
    }

    public void setSaleOrderSet(Set<SaleOrder> saleOrderSet) {
        this.saleOrderSet = saleOrderSet;
    }

    public Bus getBusId() {
        return busId;
    }

    public void setBusId(Bus busId) {
        this.busId = busId;
    }

    public EmployeeUser getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(EmployeeUser employeeId) {
        this.employeeId = employeeId;
    }

    public LineBus getLineBusId() {
        return lineBusId;
    }

    public void setLineBusId(LineBus lineBusId) {
        this.lineBusId = lineBusId;
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
        if (!(object instanceof BusTrip)) {
            return false;
        }
        BusTrip other = (BusTrip) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.btl.pojo.BusTrip[ id=" + id + " ]";
    }
    
}
