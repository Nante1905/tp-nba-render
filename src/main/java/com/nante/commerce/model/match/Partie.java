package com.nante.commerce.model.match;

import java.time.LocalDate;
import java.util.List;

import com.nante.commerce.crud.model.GenericModel;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;

@Entity
public class Partie extends GenericModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    LocalDate jour;

    @ManyToOne
    @JoinColumn(name = "id_equipe1")
    Equipe equipe1;

    @ManyToOne
    @JoinColumn(name = "id_equipe2")
    Equipe equipe2;

    @ManyToMany
    @JoinTable(name = "joueurs_partie", joinColumns = @JoinColumn(name = "id_partie"), inverseJoinColumns = @JoinColumn(name = "id_joueur"))
    List<Joueur> joueurs;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDate getJour() {
        return jour;
    }

    public void setJour(LocalDate jour) {
        this.jour = jour;
    }

    public Equipe getEquipe1() {
        return equipe1;
    }

    public void setEquipe1(Equipe equipe1) {
        this.equipe1 = equipe1;
    }

    public Equipe getEquipe2() {
        return equipe2;
    }

    public void setEquipe2(Equipe equipe2) {
        this.equipe2 = equipe2;
    }

}
