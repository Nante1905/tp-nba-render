package com.nante.commerce.services.match;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nante.commerce.crud.service.GenericService;
import com.nante.commerce.model.match.Equipe;
import com.nante.commerce.model.match.Joueur;
import com.nante.commerce.repository.match.JoueurRepository;

@Service
public class JoueurService extends GenericService<Joueur> {

    @Autowired
    private JoueurRepository joueurRepository;

    @Override
    public Joueur save(Joueur model) {
        Joueur j = new Joueur();
        j.setMasse(model.getMasse());
        j.setNom(model.getNom());
        j.setPrenom(model.getPrenom());
        j.setPhotoUrl(model.getPhotoUrl());
        j.setTaille(model.getTaille());
        Equipe e = new Equipe();
        e.setId(model.getId());
        j.setEquipe(e);
        joueurRepository.save(j);
        return j;

    }
}
