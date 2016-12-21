// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.entityformat.config.jackson;

import com.fasterxml.jackson.databind.module.SimpleModule;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.roo.entityformat.config.jackson.DomainModelModule;
import org.springframework.roo.entityformat.domain.Owner;
import org.springframework.roo.entityformat.domain.Pet;
import org.springframework.roo.entityformat.domain.Vet;
import org.springframework.roo.entityformat.domain.Visit;
import org.springframework.roo.entityformat.web.OwnerJsonMixin;
import org.springframework.roo.entityformat.web.PetJsonMixin;
import org.springframework.roo.entityformat.web.VetJsonMixin;
import org.springframework.roo.entityformat.web.VisitJsonMixin;

privileged aspect DomainModelModule_Roo_DomainModelModule {
    
    declare parents: DomainModelModule extends SimpleModule;
    
    declare @type: DomainModelModule: @JsonComponent;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     */
    public DomainModelModule.new() {
        // Mixin registration
        
        setMixInAnnotation(Owner.class, OwnerJsonMixin.class);
        setMixInAnnotation(Pet.class, PetJsonMixin.class);
        setMixInAnnotation(Vet.class, VetJsonMixin.class);
        setMixInAnnotation(Visit.class, VisitJsonMixin.class);
    }

}