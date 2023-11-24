package com.nante.commerce.controller.stats;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nante.commerce.crud.controller.GenericController;
import com.nante.commerce.model.stats.QuartTemps;

@RestController
@RequestMapping("/quart-temps")
public class QuartTempsController extends GenericController<QuartTemps> {

}
