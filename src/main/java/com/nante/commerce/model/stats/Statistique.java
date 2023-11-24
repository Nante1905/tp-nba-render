package com.nante.commerce.model.stats;

import com.nante.commerce.crud.model.GenericModel;
import com.nante.commerce.model.match.Joueur;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "v_stat_joueur")
public class Statistique {
    @Id
    @Column(name = "id_joueur")
    int id;
    @OneToOne
    @JoinColumn(name = "id_joueur")
    Joueur joueur;
    int nbMatch;
    double pd;
    double minutes;
    double points;
    double rebonds;
    @Column(name = "stat_p3")
    double points3;
    double lancerFranc;

    public int getId() {
        return id;
    }

    public void setId(int id_joueur) {
        this.id = id_joueur;
    }

    public Joueur getJoueur() {
        return joueur;
    }

    public void setJoueur(Joueur joueur) {
        this.joueur = joueur;
    }

    public int getNbMatch() {
        return nbMatch;
    }

    public void setNbMatch(int nbMatch) {
        this.nbMatch = nbMatch;
    }

    public double getPd() {
        return pd;
    }

    public void setPd(double pd) {
        this.pd = pd;
    }

    public double getMinutes() {
        return minutes;
    }

    public void setMinutes(double minutes) {
        this.minutes = minutes;
    }

    public double getPoints() {
        return points;
    }

    public void setPoints(double points) {
        this.points = points;
    }

    public double getRebonds() {
        return rebonds;
    }

    public void setRebonds(double rebonds) {
        this.rebonds = rebonds;
    }

    public double getPoints3() {
        return points3;
    }

    public void setPoints3(double points3) {
        this.points3 = points3;
    }

    public double getLancerFranc() {
        return lancerFranc;
    }

    public void setLancerFranc(double lancerFranc) {
        this.lancerFranc = lancerFranc;
    }

}
