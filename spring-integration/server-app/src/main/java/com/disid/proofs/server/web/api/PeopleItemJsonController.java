package com.disid.proofs.server.web.api;
import com.disid.proofs.server.domain.Person;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = PeopleItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Person.class, pathPrefix = "api", type = ControllerType.ITEM)
@RooJSON
public class PeopleItemJsonController {
}
