package com.nante.commerce.controller.stats.actions;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nante.commerce.crud.controller.GenericController;
import com.nante.commerce.model.stats.actions.Point;

@RestController
@RequestMapping("/points")
public class PointController extends GenericController<Point> {

}
