// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.proofs.server.config.jackson;

import com.disid.proofs.server.config.jackson.DomainModelModule;
import com.disid.proofs.server.domain.Person;
import com.disid.proofs.server.web.html.PersonJsonMixin;
import com.fasterxml.jackson.databind.module.SimpleModule;
import org.springframework.boot.jackson.JsonComponent;

privileged aspect DomainModelModule_Roo_DomainModelModule {
    
    declare parents: DomainModelModule extends SimpleModule;
    
    declare @type: DomainModelModule: @JsonComponent;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     */
    public DomainModelModule.new() {
        // Mixin registration
        
        setMixInAnnotation(Person.class, PersonJsonMixin.class);
    }

}
