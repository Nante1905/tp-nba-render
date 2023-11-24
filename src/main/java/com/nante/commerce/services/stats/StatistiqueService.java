package com.nante.commerce.services.stats;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nante.commerce.crud.service.GenericService;
import com.nante.commerce.model.match.Equipe;
import com.nante.commerce.model.stats.Statistique;
import com.nante.commerce.repository.stats.StatistiqueRepository;

@Service
public class StatistiqueService {
    @Autowired
    StatistiqueRepository statRepo;

    public List<Statistique> findAll() {
        return statRepo.findAll();
    }

    public List<Statistique> findByEquipe(int idEquipe) {
        Equipe equipe = new Equipe();
        equipe.setId(idEquipe);
        return statRepo.findByJoueur_Equipe(equipe);
    }
}
