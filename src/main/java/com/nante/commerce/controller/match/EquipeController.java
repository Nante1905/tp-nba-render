package com.nante.commerce.controller.match;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nante.commerce.crud.controller.GenericController;
import com.nante.commerce.model.match.Equipe;
import com.nante.commerce.model.stats.Statistique;
import com.nante.commerce.services.stats.StatistiqueService;
import com.nante.commerce.types.response.Response;

@RestController
@RequestMapping("/equipes")
public class EquipeController extends GenericController<Equipe> {
    @Autowired
    StatistiqueService statistiqueService;

    @GetMapping("{id}/stats")
    public ResponseEntity<?> findAll(@PathVariable("id") int id) {
        try {
            List<Statistique> results = statistiqueService.findByEquipe(id);
            return ResponseEntity.ok(new Response(results, ""));
        } catch (Exception e) {
            return ResponseEntity.status(500).body(new Response(e.getMessage()));
        }
    }
}
