// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.petclinic.web;

import org.springframework.roo.petclinic.service.api.OwnerService;
import org.springframework.roo.petclinic.service.api.PetService;
import org.springframework.roo.petclinic.web.OwnersItemPetsThymeleafController;

privileged aspect OwnersItemPetsThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private OwnerService OwnersItemPetsThymeleafController.ownerService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PetService OwnersItemPetsThymeleafController.petService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return OwnerService
     */
    public OwnerService OwnersItemPetsThymeleafController.getOwnerService() {
        return ownerService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ownerService
     */
    public void OwnersItemPetsThymeleafController.setOwnerService(OwnerService ownerService) {
        this.ownerService = ownerService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PetService
     */
    public PetService OwnersItemPetsThymeleafController.getPetService() {
        return petService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param petService
     */
    public void OwnersItemPetsThymeleafController.setPetService(PetService petService) {
        this.petService = petService;
    }
    
}
