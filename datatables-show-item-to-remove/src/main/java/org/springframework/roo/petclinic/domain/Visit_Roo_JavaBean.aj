// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.petclinic.domain;

import java.util.Calendar;
import java.util.Date;
import org.springframework.roo.petclinic.domain.Pet;
import org.springframework.roo.petclinic.domain.Vet;
import org.springframework.roo.petclinic.domain.Visit;

privileged aspect Visit_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long Visit.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     */
    public void Visit.setId(Long id) {
        this.id = id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public Integer Visit.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param version
     */
    public void Visit.setVersion(Integer version) {
        this.version = version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Visit.getDescription() {
        return this.description;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param description
     */
    public void Visit.setDescription(String description) {
        this.description = description;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Date
     */
    public Date Visit.getVisitDate() {
        return this.visitDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param visitDate
     */
    public void Visit.setVisitDate(Date visitDate) {
        this.visitDate = visitDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Pet
     */
    public Pet Visit.getPet() {
        return this.pet;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     */
    public void Visit.setPet(Pet pet) {
        this.pet = pet;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Vet
     */
    public Vet Visit.getVet() {
        return this.vet;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param vet
     */
    public void Visit.setVet(Vet vet) {
        this.vet = vet;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Calendar
     */
    public Calendar Visit.getCreatedDate() {
        return this.createdDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param createdDate
     */
    public void Visit.setCreatedDate(Calendar createdDate) {
        this.createdDate = createdDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Visit.getCreatedBy() {
        return this.createdBy;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param createdBy
     */
    public void Visit.setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Calendar
     */
    public Calendar Visit.getModifiedDate() {
        return this.modifiedDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modifiedDate
     */
    public void Visit.setModifiedDate(Calendar modifiedDate) {
        this.modifiedDate = modifiedDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Visit.getModifiedBy() {
        return this.modifiedBy;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modifiedBy
     */
    public void Visit.setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }
    
}
