// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.petclinic.web;

import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.datatables.ConvertedDatatablesData;
import io.springlets.data.web.datatables.Datatables;
import io.springlets.data.web.datatables.DatatablesColumns;
import io.springlets.data.web.datatables.DatatablesPageable;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.convert.ConversionService;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.petclinic.domain.Pet;
import org.springframework.roo.petclinic.domain.Visit;
import org.springframework.roo.petclinic.service.api.PetService;
import org.springframework.roo.petclinic.service.api.VisitService;
import org.springframework.roo.petclinic.web.PetsCollectionThymeleafController;
import org.springframework.roo.petclinic.web.PetsCollectionThymeleafLinkFactory;
import org.springframework.roo.petclinic.web.PetsItemVisitsThymeleafController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

privileged aspect PetsItemVisitsThymeleafController_Roo_Thymeleaf {
    
    declare @type: PetsItemVisitsThymeleafController: @Controller;
    
    declare @type: PetsItemVisitsThymeleafController: @RequestMapping(value = "/pets/{pet}/visits", name = "PetsItemVisitsThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource PetsItemVisitsThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<PetsCollectionThymeleafController> PetsItemVisitsThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ConversionService PetsItemVisitsThymeleafController.conversionService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param petService
     * @param visitService
     * @param conversionService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public PetsItemVisitsThymeleafController.new(PetService petService, VisitService visitService, ConversionService conversionService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setPetService(petService);
        setVisitService(visitService);
        setConversionService(conversionService);
        setMessageSource(messageSource);
        setCollectionLink(linkBuilder.of(PetsCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource PetsItemVisitsThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void PetsItemVisitsThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<PetsCollectionThymeleafController> PetsItemVisitsThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void PetsItemVisitsThymeleafController.setCollectionLink(MethodLinkBuilderFactory<PetsCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService PetsItemVisitsThymeleafController.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void PetsItemVisitsThymeleafController.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Pet
     */
    @ModelAttribute
    public Pet PetsItemVisitsThymeleafController.getPet(@PathVariable("pet") Long id, Locale locale, HttpMethod method) {
        Pet pet = null;
        if (HttpMethod.PUT.equals(method)) {
            pet = petService.findOneForUpdate(id);
        } else {
            pet = petService.findOne(id);
        }
        
        if (pet == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Pet", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return pet;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void PetsItemVisitsThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("visitDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("createdDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("modifiedDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void PetsItemVisitsThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "datatables", produces = Datatables.MEDIA_TYPE, value = "/dt")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<Visit>> PetsItemVisitsThymeleafController.datatables(@ModelAttribute Pet pet, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<Visit> visits = getVisitService().findByPet(pet, search, pageable);
        long totalVisitsCount = getVisitService().countByPet(pet);
        ConvertedDatatablesData<Visit> data =  new ConvertedDatatablesData<Visit>(visits, totalVisitsCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/create-form", name = "createForm")
    public ModelAndView PetsItemVisitsThymeleafController.createForm(@ModelAttribute Pet pet, Model model) {
        populateForm(model);
        model.addAttribute("visit", new Visit());
        return new ModelAndView("pets/visits/create");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     * @param visitsToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromVisits", value = "/{visitsToRemove}")
    @ResponseBody
    public ResponseEntity<?> PetsItemVisitsThymeleafController.removeFromVisits(@ModelAttribute Pet pet, @PathVariable("visitsToRemove") Long visitsToRemove) {
        getPetService().removeFromVisits(pet,Collections.singleton(visitsToRemove));
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     * @param visitsToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromVisitsBatch", value = "/batch/{visitsToRemove}")
    @ResponseBody
    public ResponseEntity<?> PetsItemVisitsThymeleafController.removeFromVisitsBatch(@ModelAttribute Pet pet, @PathVariable("visitsToRemove") Collection<Long> visitsToRemove) {
        getPetService().removeFromVisits(pet, visitsToRemove);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     * @param visits
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PostMapping(name = "create")
    public ModelAndView PetsItemVisitsThymeleafController.create(@ModelAttribute Pet pet, @RequestParam(value = "visitsIds", required = false) List<Long> visits, @RequestParam("parentVersion") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Remove empty values
        if (visits != null) {
            for (Iterator<Long> iterator = visits.iterator(); iterator.hasNext();) {
                if (iterator.next() == null) {
                    iterator.remove();
                }
            }
        }
        // Concurrency control
        if(version != pet.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            // Obtain the selected books and include them in the author that will be 
            // included in the view
            if (visits != null) {
                pet.setVisits(new HashSet<Visit>(getVisitService().findAll(visits)));
            }else{
                pet.setVisits(new HashSet<Visit>());
            }
            // Reset the version to prevent update
             pet.setVersion(version);
            // Include the updated element in the model
            model.addAttribute("pet", pet);
            model.addAttribute("concurrency", true);
            return new ModelAndView("pets/visits/create");
        }else if(version != pet.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            // Provide the original element from the Database
            model.addAttribute("pet", pet);
            model.addAttribute("concurrency", false);
            return new ModelAndView("pets/visits/create");
        }
        getPetService().setVisits(pet,visits);
        return new ModelAndView("redirect:" + getCollectionLink().to(PetsCollectionThymeleafLinkFactory.LIST).toUriString());
    }
    
}
