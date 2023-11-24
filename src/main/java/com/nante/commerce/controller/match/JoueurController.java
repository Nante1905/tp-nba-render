package com.nante.commerce.controller.match;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nante.commerce.crud.controller.GenericController;
import com.nante.commerce.model.match.Joueur;

@RestController
@RequestMapping("/joueurs")
public class JoueurController extends GenericController<Joueur> {

}
