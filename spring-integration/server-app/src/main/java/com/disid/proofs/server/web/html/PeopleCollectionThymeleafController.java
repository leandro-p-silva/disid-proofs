package com.disid.proofs.server.web.html;
import com.disid.proofs.server.domain.Person;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = PeopleCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Person.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class PeopleCollectionThymeleafController {
}
