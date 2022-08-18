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
@Table(name = "line_bus")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "LineBus.findAll", query = "SELECT l FROM LineBus l"),
    @NamedQuery(name = "LineBus.findById", query = "SELECT l FROM LineBus l WHERE l.id = :id"),
    @NamedQuery(name = "LineBus.findByDeparture", query = "SELECT l FROM LineBus l WHERE l.departure = :departure"),
    @NamedQuery(name = "LineBus.findByDestination", query = "SELECT l FROM LineBus l WHERE l.destination = :destination"),
    @NamedQuery(name = "LineBus.findByDistance", query = "SELECT l FROM LineBus l WHERE l.distance = :distance"),
    @NamedQuery(name = "LineBus.findByPrice", query = "SELECT l FROM LineBus l WHERE l.price = :price"),
    @NamedQuery(name = "LineBus.findByActive", query = "SELECT l FROM LineBus l WHERE l.active = :active")})
public class LineBus implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "departure")
    private String departure;
    @Size(max = 255)
    @Column(name = "destination")
    private String destination;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "distance")
    private Double distance;
    @Column(name = "price")
    private Long price;
    @Column(name = "active")
    private Boolean active;
    @OneToMany(mappedBy = "linebusId")
    private Set<Bustrip> bustripSet;

    public LineBus() {
    }

    public LineBus(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDeparture() {
        return departure;
    }

    public void setDeparture(String departure) {
        this.departure = departure;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public Double getDistance() {
        return distance;
    }

    public void setDistance(Double distance) {
        this.distance = distance;
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
    public Set<Bustrip> getBustripSet() {
        return bustripSet;
    }

    public void setBustripSet(Set<Bustrip> bustripSet) {
        this.bustripSet = bustripSet;
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
        if (!(object instanceof LineBus)) {
            return false;
        }
        LineBus other = (LineBus) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.btl.pojo.LineBus[ id=" + id + " ]";
    }
    
}
