// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.proofs.client.web.api;

import com.disid.proofs.client.domain.Person;
import com.disid.proofs.client.service.api.PersonService;
import com.disid.proofs.client.web.api.PeopleItemJsonController;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect PeopleItemJsonController_Roo_JSON {
    
    declare @type: PeopleItemJsonController: @RestController;
    
    declare @type: PeopleItemJsonController: @RequestMapping(value = "/api/people/{person}", name = "PeopleItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param personService
     */
    @Autowired
    public PeopleItemJsonController.new(PersonService personService) {
        this.personService = personService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Person
     */
    @ModelAttribute
    public Person PeopleItemJsonController.getPerson(@PathVariable("person") Long id) {
        Person person = personService.findOne(id);
        if (person == null) {
            throw new NotFoundException(String.format("Person with identifier '%s' not found",id));
        }
        return person;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param person
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> PeopleItemJsonController.show(@ModelAttribute Person person) {
        return ResponseEntity.ok(person);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param person
     * @return UriComponents
     */
    public static UriComponents PeopleItemJsonController.showURI(Person person) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(PeopleItemJsonController.class).show(person))
            .buildAndExpand(person.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedPerson
     * @param person
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> PeopleItemJsonController.update(@ModelAttribute Person storedPerson, @Valid @RequestBody Person person, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        person.setId(storedPerson.getId());
        getPersonService().save(person);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param person
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> PeopleItemJsonController.delete(@ModelAttribute Person person) {
        getPersonService().delete(person);
        return ResponseEntity.ok().build();
    }
    
}
