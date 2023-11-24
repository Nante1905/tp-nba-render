package com.nante.commerce.repository.stats;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nante.commerce.crud.repository.GenericRepository;
import com.nante.commerce.model.match.Joueur;
import com.nante.commerce.model.stats.Statistique;
import java.util.List;
import com.nante.commerce.model.match.Equipe;

public interface StatistiqueRepository extends JpaRepository<Statistique, Integer> {
    List<Statistique> findByJoueur_Equipe(Equipe joueur_Equipe);
}
