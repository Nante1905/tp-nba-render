package com.nante.commerce.model.stats;

import java.time.LocalTime;

import com.nante.commerce.crud.model.GenericModel;
import com.nante.commerce.model.match.Joueur;
import com.nante.commerce.model.match.Partie;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class TempsPasse extends GenericModel {
    @ManyToOne
    @JoinColumn(name = "id_joueur")
    Joueur joueur;

    @ManyToOne
    @JoinColumn(name = "id_partie")
    Partie partie;

    @ManyToOne
    @JoinColumn(name = "id_quart_temps")
    QuartTemps quartTemps;

    LocalTime chronoEntre;
    LocalTime chronoSortie;

    public Joueur getJoueur() {
        return joueur;
    }

    public void setJoueur(Joueur joueur) {
        this.joueur = joueur;
    }

    public Partie getPartie() {
        return partie;
    }

    public void setPartie(Partie partie) {
        this.partie = partie;
    }

    public QuartTemps getQuartTemps() {
        return quartTemps;
    }

    public void setQuartTemps(QuartTemps quartTemps) {
        this.quartTemps = quartTemps;
    }

    public LocalTime getChronoEntre() {
        return chronoEntre;
    }

    public void setChronoEntre(LocalTime chronoEntre) {
        this.chronoEntre = chronoEntre;
    }

    public LocalTime getChronoSortie() {
        return chronoSortie;
    }

    public void setChronoSortie(LocalTime chronoSortie) {
        this.chronoSortie = chronoSortie;
    }

}
