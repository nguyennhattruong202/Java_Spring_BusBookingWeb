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
@Table(name = "coachline")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Coachline.findAll", query = "SELECT c FROM Coachline c"),
    @NamedQuery(name = "Coachline.findById", query = "SELECT c FROM Coachline c WHERE c.id = :id"),
    @NamedQuery(name = "Coachline.findByDeparture", query = "SELECT c FROM Coachline c WHERE c.departure = :departure"),
    @NamedQuery(name = "Coachline.findByDestination", query = "SELECT c FROM Coachline c WHERE c.destination = :destination"),
    @NamedQuery(name = "Coachline.findByDistance", query = "SELECT c FROM Coachline c WHERE c.distance = :distance"),
    @NamedQuery(name = "Coachline.findByPrice", query = "SELECT c FROM Coachline c WHERE c.price = :price"),
    @NamedQuery(name = "Coachline.findByActive", query = "SELECT c FROM Coachline c WHERE c.active = :active")})
public class Coachline implements Serializable {

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
    @OneToMany(mappedBy = "coachlineId")
    private Set<Coachtrip> coachtripSet;

    public Coachline() {
    }

    public Coachline(Integer id) {
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
    public Set<Coachtrip> getCoachtripSet() {
        return coachtripSet;
    }

    public void setCoachtripSet(Set<Coachtrip> coachtripSet) {
        this.coachtripSet = coachtripSet;
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
        if (!(object instanceof Coachline)) {
            return false;
        }
        Coachline other = (Coachline) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.btl.pojo.Coachline[ id=" + id + " ]";
    }
    
}
