-- CREATE DATABASE stat_basket;
-- \c stat_basket;

CREATE TABLE equipe(
   id SERIAL PRIMARY KEY,
   nom VARCHAR(255)  NOT NULL,
   UNIQUE(nom)
);

CREATE TABLE partie(
   id SERIAL PRIMARY KEY,
   jour TIMESTAMP NOT NULL,
   id_equipe2 INTEGER NOT NULL,
   id_equipe1 INTEGER NOT NULL,
   FOREIGN KEY(id_equipe2) REFERENCES equipe(id),
   FOREIGN KEY(id_equipe1) REFERENCES equipe(id)
);

CREATE TABLE quart_temps(
   id SERIAL PRIMARY KEY,
   nom VARCHAR(30)  NOT NULL,
   UNIQUE(nom)
);

CREATE TABLE joueur(
   id SERIAL PRIMARY KEY,
   nom VARCHAR(255)  NOT NULL,
   prenom VARCHAR(255)  NOT NULL,
   numero integer,
   masse DOUBLE PRECISION,
   taille DOUBLE PRECISION,
   id_equipe INTEGER NOT NULL,
   photo_url text,
   FOREIGN KEY(id_equipe) REFERENCES equipe(id)
);

CREATE TABLE joueur_equipe(
   id_joueur INTEGER,
   id_equipe INTEGER,
   date_entre DATE NOT NULL,
   FOREIGN KEY(id_joueur) REFERENCES joueur(id),
   FOREIGN KEY(id_equipe) REFERENCES equipe(id)
);

CREATE TABLE point_marque(
   id SERIAL PRIMARY key,
   id_joueur INTEGER,
   id_partie INTEGER,
   id_quart_temps INTEGER,
   valeur INTEGER NOT NULL,
   success boolean,
   chrono TIME NOT NULL,
   FOREIGN KEY(id_joueur) REFERENCES joueur(id),
   FOREIGN KEY(id_partie) REFERENCES partie(id),
   FOREIGN KEY(id_quart_temps) REFERENCES quart_temps(id)
);

CREATE TABLE rebond(
   id SERIAL PRIMARY key,
   id_joueur INTEGER,
   id_partie INTEGER,
   id_quart_temps INTEGER,
   chrono TIME NOT NULL,
   FOREIGN KEY(id_joueur) REFERENCES joueur(id),
   FOREIGN KEY(id_partie) REFERENCES partie(id),
   FOREIGN KEY(id_quart_temps) REFERENCES quart_temps(id)
);

CREATE TABLE passe_decisive(
   id SERIAL PRIMARY key,
   id_joueur INTEGER,
   id_partie INTEGER,
   id_quart_temps INTEGER,
   chrono TIME NOT NULL,
   FOREIGN KEY(id_joueur) REFERENCES joueur(id),
   FOREIGN KEY(id_partie) REFERENCES partie(id),
   FOREIGN KEY(id_quart_temps) REFERENCES quart_temps(id)
);

CREATE TABLE temps_passe(
   id SERIAL PRIMARY key,
   id_joueur INTEGER,
   id_partie INTEGER,
   id_quart_temps INTEGER,
   chrono_entre TIME NOT NULL,
   chrono_sortie TIME NOT NULL,
   FOREIGN KEY(id_joueur) REFERENCES joueur(id),
   FOREIGN KEY(id_partie) REFERENCES partie(id),
   FOREIGN KEY(id_quart_temps) REFERENCES quart_temps(id)
);

CREATE TABLE joueur_partie(
   id_joueur INTEGER,
   id_partie INTEGER,
   FOREIGN KEY(id_joueur) REFERENCES joueur(id),
   FOREIGN KEY(id_partie) REFERENCES partie(id)
);

