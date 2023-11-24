package com.nante.commerce.controller.stats;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nante.commerce.crud.controller.GenericController;
import com.nante.commerce.model.stats.Statistique;
import com.nante.commerce.services.stats.StatistiqueService;
import com.nante.commerce.types.response.Response;

@RestController
@RequestMapping("/stats")
public class StatistiqueController {
    @Autowired
    StatistiqueService statService;

    @GetMapping
    public ResponseEntity<?> findAll() {
        try {
            List<Statistique> results = statService.findAll();
            return ResponseEntity.ok(new Response(results, ""));
        } catch (Exception e) {
            return ResponseEntity.status(500).body(new Response(e.getMessage()));
        }
    }
}
