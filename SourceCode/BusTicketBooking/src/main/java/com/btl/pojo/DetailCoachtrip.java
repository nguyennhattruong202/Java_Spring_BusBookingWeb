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
@Table(name = "detail_coachtrip")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DetailCoachtrip.findAll", query = "SELECT d FROM DetailCoachtrip d"),
    @NamedQuery(name = "DetailCoachtrip.findById", query = "SELECT d FROM DetailCoachtrip d WHERE d.id = :id"),
    @NamedQuery(name = "DetailCoachtrip.findByDepartureTime", query = "SELECT d FROM DetailCoachtrip d WHERE d.departureTime = :departureTime"),
    @NamedQuery(name = "DetailCoachtrip.findByDestinationTime", query = "SELECT d FROM DetailCoachtrip d WHERE d.destinationTime = :destinationTime")})
public class DetailCoachtrip implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "departure_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date departureTime;
    @Column(name = "destination_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date destinationTime;
    @JoinColumn(name = "coachtrip_id", referencedColumnName = "id")
    @ManyToOne
    private Coachtrip coachtripId;
    @JoinColumn(name = "station_id", referencedColumnName = "id")
    @ManyToOne
    private Station stationId;

    public DetailCoachtrip() {
    }

    public DetailCoachtrip(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDepartureTime() {
        return departureTime;
    }

    public void setDepartureTime(Date departureTime) {
        this.departureTime = departureTime;
    }

    public Date getDestinationTime() {
        return destinationTime;
    }

    public void setDestinationTime(Date destinationTime) {
        this.destinationTime = destinationTime;
    }

    public Coachtrip getCoachtripId() {
        return coachtripId;
    }

    public void setCoachtripId(Coachtrip coachtripId) {
        this.coachtripId = coachtripId;
    }

    public Station getStationId() {
        return stationId;
    }

    public void setStationId(Station stationId) {
        this.stationId = stationId;
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
        if (!(object instanceof DetailCoachtrip)) {
            return false;
        }
        DetailCoachtrip other = (DetailCoachtrip) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.btl.pojo.DetailCoachtrip[ id=" + id + " ]";
    }
    
}
