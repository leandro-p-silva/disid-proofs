// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.proofs.server.web.html;

import com.disid.proofs.server.service.api.PersonService;
import com.disid.proofs.server.web.html.PeopleCollectionThymeleafController;

privileged aspect PeopleCollectionThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PersonService PeopleCollectionThymeleafController.personService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PersonService
     */
    public PersonService PeopleCollectionThymeleafController.getPersonService() {
        return personService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param personService
     */
    public void PeopleCollectionThymeleafController.setPersonService(PersonService personService) {
        this.personService = personService;
    }
    
}
