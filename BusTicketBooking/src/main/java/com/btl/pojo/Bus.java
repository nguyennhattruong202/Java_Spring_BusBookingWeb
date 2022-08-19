/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
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
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ACER
 */
@Entity
@Table(name = "bus")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Bus.findAll", query = "SELECT b FROM Bus b"),
    @NamedQuery(name = "Bus.findById", query = "SELECT b FROM Bus b WHERE b.id = :id"),
    @NamedQuery(name = "Bus.findByName", query = "SELECT b FROM Bus b WHERE b.name = :name"),
    @NamedQuery(name = "Bus.findByLicensePlates", query = "SELECT b FROM Bus b WHERE b.licensePlates = :licensePlates"),
    @NamedQuery(name = "Bus.findByCapacity", query = "SELECT b FROM Bus b WHERE b.capacity = :capacity"),
    @NamedQuery(name = "Bus.findByManufacturer", query = "SELECT b FROM Bus b WHERE b.manufacturer = :manufacturer"),
    @NamedQuery(name = "Bus.findByType", query = "SELECT b FROM Bus b WHERE b.type = :type"),
    @NamedQuery(name = "Bus.findByActive", query = "SELECT b FROM Bus b WHERE b.active = :active")})
public class Bus implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @NotNull(message = "{admin.validation.bus.nullError}")
    @Size(min = 1, max = 255, message = "{admin.validation.bus.name.sizeError}")
    @Column(name = "name")
    private String name;
    @NotNull(message = "{admin.validation.bus.nullError}")
    @Size(min = 8, max = 255, message = "{admin.validation.bus.licensePlates.sizeError}")
    @Column(name = "license_plates")
    private String licensePlates;
    @NotNull(message = "{admin.validation.bus.nullError}")
    @Min(value = 4, message = "{admin.validation.bus.capacity.minError}")
    @Max(value = 50, message = "{admin.validation.bus.capacity.maxError}")
    @Column(name = "capacity")
    private Integer capacity;
    @NotNull(message = "{admin.validation.bus.nullError}")
    @Size(min = 1, max = 255, message = "{admin.validation.bus.manufacturer.sizeError}")
    @Column(name = "manufacturer")
    private String manufacturer;
    @NotNull(message = "{admin.validation.bus.nullError}")
    @Size(max = 255)
    @Column(name = "type")
    private String type;
    @Column(name = "active")
    private Boolean active = true;
    @JsonIgnore
    @OneToMany(mappedBy = "busId")
    private Set<Bustrip> bustripSet;

    public Bus() {
    }

    public Bus(Integer id) {
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
        if (!(object instanceof Bus)) {
            return false;
        }
        Bus other = (Bus) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.btl.pojo.Bus[ id=" + id + " ]";
    }
    
}
