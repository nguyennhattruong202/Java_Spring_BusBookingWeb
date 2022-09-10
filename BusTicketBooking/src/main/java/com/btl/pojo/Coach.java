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
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ACER
 */
@Entity
@Table(name = "coach")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Coach.findAll", query = "SELECT c FROM Coach c"),
    @NamedQuery(name = "Coach.findById", query = "SELECT c FROM Coach c WHERE c.id = :id"),
    @NamedQuery(name = "Coach.findByName", query = "SELECT c FROM Coach c WHERE c.name = :name"),
    @NamedQuery(name = "Coach.findByLicensePlates", query = "SELECT c FROM Coach c WHERE c.licensePlates = :licensePlates"),
    @NamedQuery(name = "Coach.findByCapacity", query = "SELECT c FROM Coach c WHERE c.capacity = :capacity"),
    @NamedQuery(name = "Coach.findByManufacturer", query = "SELECT c FROM Coach c WHERE c.manufacturer = :manufacturer"),
    @NamedQuery(name = "Coach.findByType", query = "SELECT c FROM Coach c WHERE c.type = :type"),
    @NamedQuery(name = "Coach.findByActive", query = "SELECT c FROM Coach c WHERE c.active = :active")})
public class Coach implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @NotNull(message = "{validator.addCoach.notNull.error}")
    @Size(max = 255)
    @Column(name = "name")
    private String name;
    @Size(max = 255)
    @NotNull(message = "{validator.addCoach.notNull.error}")
    @Column(name = "license_plates")
    private String licensePlates;
    @Max(value = 4, message = "{validator.addCoach.min}")
    @Column(name = "capacity")
    private Integer capacity;
    @Size(max = 255)
    @NotNull(message = "{validator.addCoach.notNull.error}")
    @Column(name = "manufacturer")
    private String manufacturer;
    @Size(max = 255)
    @Column(name = "type")
    private String type;
    @Column(name = "active")
    private Boolean active;
    @OneToMany(mappedBy = "coachId")
    private Set<Coachtrip> coachtripSet;

    public Coach() {
    }

    public Coach(Integer id) {
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

    public String getLicensePlates() {
        return licensePlates;
    }

    public void setLicensePlates(String licensePlates) {
        this.licensePlates = licensePlates;
    }

    public Integer getCapacity() {
        return capacity;
    }

    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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
        if (!(object instanceof Coach)) {
            return false;
        }
        Coach other = (Coach) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.btl.pojo.Coach[ id=" + id + " ]";
    }
    
}
