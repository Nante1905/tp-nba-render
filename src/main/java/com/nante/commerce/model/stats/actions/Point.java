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
@Table(name = "point_marque")
public class Point extends Actions {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    public Point(Joueur joueur, Partie partie, QuartTemps quartTemps, LocalTime chrono) {
        super(joueur, partie, quartTemps, chrono);
    }

    public Point() {
        super();
    }

    int valeur;
    boolean success;

    public int getValeur() {
        return valeur;
    }

    public void setValeur(int valeur) {
        this.valeur = valeur;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

}
