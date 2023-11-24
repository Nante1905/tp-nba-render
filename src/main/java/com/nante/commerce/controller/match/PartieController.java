package com.nante.commerce.controller.match;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nante.commerce.crud.controller.GenericController;
import com.nante.commerce.model.match.Partie;

@RestController
@RequestMapping("/parties")
public class PartieController extends GenericController<Partie> {

}
