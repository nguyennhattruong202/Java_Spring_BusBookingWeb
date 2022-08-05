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
@Table(name = "employee_user")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EmployeeUser.findAll", query = "SELECT e FROM EmployeeUser e"),
    @NamedQuery(name = "EmployeeUser.findById", query = "SELECT e FROM EmployeeUser e WHERE e.id = :id"),
    @NamedQuery(name = "EmployeeUser.findByLastName", query = "SELECT e FROM EmployeeUser e WHERE e.lastName = :lastName"),
    @NamedQuery(name = "EmployeeUser.findByFirstName", query = "SELECT e FROM EmployeeUser e WHERE e.firstName = :firstName"),
    @NamedQuery(name = "EmployeeUser.findByDateOfBirth", query = "SELECT e FROM EmployeeUser e WHERE e.dateOfBirth = :dateOfBirth"),
    @NamedQuery(name = "EmployeeUser.findBySex", query = "SELECT e FROM EmployeeUser e WHERE e.sex = :sex"),
    @NamedQuery(name = "EmployeeUser.findByAddress", query = "SELECT e FROM EmployeeUser e WHERE e.address = :address"),
    @NamedQuery(name = "EmployeeUser.findByIdentityNum", query = "SELECT e FROM EmployeeUser e WHERE e.identityNum = :identityNum"),
    @NamedQuery(name = "EmployeeUser.findByPhone", query = "SELECT e FROM EmployeeUser e WHERE e.phone = :phone"),
    @NamedQuery(name = "EmployeeUser.findByEmail", query = "SELECT e FROM EmployeeUser e WHERE e.email = :email"),
    @NamedQuery(name = "EmployeeUser.findByImage", query = "SELECT e FROM EmployeeUser e WHERE e.image = :image"),
    @NamedQuery(name = "EmployeeUser.findByUsername", query = "SELECT e FROM EmployeeUser e WHERE e.username = :username"),
    @NamedQuery(name = "EmployeeUser.findByPassword", query = "SELECT e FROM EmployeeUser e WHERE e.password = :password"),
    @NamedQuery(name = "EmployeeUser.findByActive", query = "SELECT e FROM EmployeeUser e WHERE e.active = :active")})
public class EmployeeUser implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "last_name")
    private String lastName;
    @Size(max = 255)
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "date_of_birth")
    @Temporal(TemporalType.DATE)
    private Date dateOfBirth;
    @Size(max = 255)
    @Column(name = "sex")
    private String sex;
    @Size(max = 255)
    @Column(name = "address")
    private String address;
    @Size(max = 255)
    @Column(name = "identity_num")
    private String identityNum;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Size(max = 255)
    @Column(name = "phone")
    private String phone;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 255)
    @Column(name = "email")
    private String email;
    @Size(max = 255)
    @Column(name = "image")
    private String image;
    @Size(max = 255)
    @Column(name = "username")
    private String username;
    @Size(max = 255)
    @Column(name = "password")
    private String password;
    @Column(name = "active")
    private Boolean active;
    @JoinColumn(name = "type_emp_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private TypeEmployee typeEmpId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "employeeId")
    private Set<BusTrip> busTripSet;

    public EmployeeUser() {
    }

    public EmployeeUser(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIdentityNum() {
        return identityNum;
    }

    public void setIdentityNum(String identityNum) {
        this.identityNum = identityNum;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    public TypeEmployee getTypeEmpId() {
        return typeEmpId;
    }

    public void setTypeEmpId(TypeEmployee typeEmpId) {
        this.typeEmpId = typeEmpId;
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
        if (!(object instanceof EmployeeUser)) {
            return false;
        }
        EmployeeUser other = (EmployeeUser) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.btl.pojo.EmployeeUser[ id=" + id + " ]";
    }
    
}
