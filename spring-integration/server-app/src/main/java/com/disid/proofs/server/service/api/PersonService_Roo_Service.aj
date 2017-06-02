// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.proofs.server.service.api;

import com.disid.proofs.server.domain.Person;
import com.disid.proofs.server.service.api.PersonService;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.format.EntityResolver;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect PersonService_Roo_Service {
    
    declare parents: PersonService extends EntityResolver<Person, Long>;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Person
     */
    public abstract Person PersonService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param person
     */
    public abstract void PersonService.delete(Person person);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Person> PersonService.save(Iterable<Person> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void PersonService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Person
     */
    public abstract Person PersonService.save(Person entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Person
     */
    public abstract Person PersonService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Person> PersonService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Person> PersonService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long PersonService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Person> PersonService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
}
