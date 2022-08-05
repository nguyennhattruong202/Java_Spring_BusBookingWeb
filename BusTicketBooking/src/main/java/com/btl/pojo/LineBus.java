/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.pojo;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
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
    @NamedQuery(name = "LineBus.findByName", query = "SELECT l FROM LineBus l WHERE l.name = :name"),
    @NamedQuery(name = "LineBus.findByDeparture", query = "SELECT l FROM LineBus l WHERE l.departure = :departure"),
    @NamedQuery(name = "LineBus.findByDestination", query = "SELECT l FROM LineBus l WHERE l.destination = :destination")})
public class LineBus implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "name")
    private String name;
    @Size(max = 255)
    @Column(name = "departure")
    private String departure;
    @Size(max = 255)
    @Column(name = "destination")
    private String destination;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "lineBusId")
    private Set<BusTrip> busTripSet;

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    @XmlTransient
    public Set<BusTrip> getBusTripSet() {
        return busTripSet;
    }

    public void setBusTripSet(Set<BusTrip> busTripSet) {
        this.busTripSet = busTripSet;
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
