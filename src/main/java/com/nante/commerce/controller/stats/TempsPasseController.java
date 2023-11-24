package com.nante.commerce.controller.stats;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nante.commerce.crud.controller.GenericController;
import com.nante.commerce.model.stats.TempsPasse;

@RestController
@RequestMapping("/temps-passe")
public class TempsPasseController extends GenericController<TempsPasse> {

}
