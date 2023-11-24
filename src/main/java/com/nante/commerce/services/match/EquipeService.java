package com.nante.commerce.services.match;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nante.commerce.crud.service.GenericService;
import com.nante.commerce.model.match.Equipe;
import com.nante.commerce.model.match.Joueur;
import com.nante.commerce.repository.match.EquipeRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
public class EquipeService extends GenericService<Equipe> {
    @Autowired
    EquipeRepository equipeRepository;
    @PersistenceContext
    EntityManager entityManager;

    @Override
    @Transactional
    public Equipe save(Equipe model) {
        for (Joueur j : model.getJoueurs()) {
            j.setEquipe(model);
        }
        Equipe e = equipeRepository.save(model);

        for (Joueur j : model.getJoueurs()) {
            entityManager
                    .createNativeQuery(
                            "insert into joueur_equipe(id_joueur, id_equipe, date_entre) values (:joueur, :equipe, now()) ",
                            int.class)
                    .setParameter("joueur", j.getId()).setParameter("equipe", e.getId())
                    .executeUpdate();

        }

        return e;
    }
}
