package com.nante.commerce.model.stats.actions;

import java.time.LocalTime;

import com.nante.commerce.model.match.Joueur;
import com.nante.commerce.model.match.Partie;
import com.nante.commerce.model.stats.Actions;
import com.nante.commerce.model.stats.QuartTemps;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "passe_decisive")
public class PasseDecisive extends Actions {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    public PasseDecisive(Joueur joueur, Partie partie, QuartTemps quartTemps, LocalTime chrono) {
        super(joueur, partie, quartTemps, chrono);

    }

    public PasseDecisive() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

}
