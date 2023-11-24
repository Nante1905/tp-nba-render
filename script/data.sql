-- Insertion d'équipes
INSERT INTO equipe (nom) VALUES ('PHX'), ('DAL');


-- Insertion de parties
INSERT INTO partie (jour, id_equipe1, id_equipe2) VALUES
  ('2023-01-01 18:00:00', 1, 2),
  ('2023-01-02 19:30:00', 2, 1);


-- Insertion de quart-temps
INSERT INTO quart_temps (nom) VALUES ('Premier quart-temps'), ('Deuxième quart-temps'), ('Troisième quart-temps'), ('Quatrième quart-temps');

-- Insertion de joueurs

INSERT INTO joueur (nom, prenom,numero, masse, taille, id_equipe,photo_url) VALUES
  ('Durant', 'Kevin',1, 80.5, 185, 1,'https://cdn.nba.com/headshots/nba/latest/260x190/201142.png'),
  ('Booker', 'Devin',2, 75.2, 180, 1,'https://cdn.nba.com/headshots/nba/latest/260x190/1626164.png'),
  ('Barnes', 'Scottie',3, 82.0, 190, 1,'https://cdn.nba.com/headshots/nba/latest/260x190/1630567.png'),
  ('Williamson', 'Zion',4, 78.8, 175, 1,'https://cdn.nba.com/headshots/nba/latest/260x190/1629627.png'),
  ('Grant', 'Jeremy',5, 70.0, 170, 1,'https://cdn.nba.com/headshots/nba/latest/260x190/203924.png');
  
INSERT INTO joueur (nom, prenom,numero, masse, taille, id_equipe,photo_url) VALUES
  ('Doncic', 'Luka',1, 85.0, 190, 2,'https://cdn.nba.com/headshots/nba/latest/260x190/1629029.png'),
  ('Mitchell', 'Donnovan',2, 72.3, 175, 2,'https://cdn.nba.com/headshots/nba/latest/260x190/1628378.png'),
  ('Thomas', 'Cam',3, 79.5, 185, 2,'https://cdn.nba.com/headshots/nba/latest/260x190/1630560.png'),
  ('Lillard', 'Damian',4, 76.1, 180, 2,'https://cdn.nba.com/headshots/nba/latest/260x190/203081.png'),
  ('Brunson', 'Jallen',5, 77.8, 182, 2,'https://cdn.nba.com/headshots/nba/latest/260x190/1628973.png');

-- Insertion de relations joueur_equipe
INSERT INTO joueur_equipe (id_joueur, id_equipe, date_entre) VALUES
  (1, 1, '2023-01-01'),
  (2, 1, '2023-01-01'),
  (3, 1, '2023-01-01'),
  (4, 1, '2023-01-01'),
  (5, 1, '2023-01-01'),
  (6, 2, '2023-01-01'),
  (7, 2, '2023-01-01'),
  (8, 2, '2023-01-01'),
  (9, 2, '2023-01-01'),
  (10, 2, '2023-01-01');

-- Insertion de parties liées à des joueurs
INSERT INTO joueur_partie (id_joueur, id_partie) VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (4, 1),
  (5, 1),
  (6, 1),
  (7, 1),
  (8, 1),
  (9, 1),
  (10, 1);


--- Insertion de données de test pour la table point_marque avec des chronos variant de 1 à 12 minutes
INSERT INTO point_marque (id_joueur, id_partie, id_quart_temps, valeur, success, chrono) VALUES
  (1, 1, 3, 2, true, '00:01:30'),
  (2, 1, 4, 3, false, '00:02:45'),
  (3, 1, 4, 1, true, '00:04:50'),
  (4, 1, 4, 2, true, '00:06:55'),
  (5, 1, 4, 3, false, '00:08:58'),
  (6, 2, 3, 2, true, '00:10:30'),
  (7, 2, 3, 1, false, '00:09:45'),
  (8, 2, 4, 3, true, '00:11:50'),
  (9, 2, 4, 1, false, '00:10:55'),
  (10, 2, 4, 2, true, '00:09:58'),
  (1, 2, 1, 3, true, '00:07:30'),
  (2, 2, 1, 2, false, '00:08:45'),
  (3, 2, 2, 1, true, '00:07:50'),
  (4, 2, 2, 2, true, '00:09:55'),
  (5, 2, 3, 3, false, '00:07:58'),
  (6, 1, 1, 2, true, '00:10:30'),
  (7, 1, 1, 1, false, '00:11:45'),
  (8, 1, 2, 3, true, '00:10:50'),
  (9, 1, 2, 1, false, '00:10:55'),
  (10, 1, 3, 2, true, '00:10:58');


-- Insertion de données de test supplémentaires pour la table point_marque avec des chronos variant de 1 à 12 minutes
INSERT INTO point_marque (id_joueur, id_partie, id_quart_temps, valeur, success, chrono) VALUES
  (1, 1, 2, 2, true, '00:00:45'),
  (2, 1, 3, 3, false, '00:02:00'),
  (3, 1, 3, 1, true, '00:03:15'),
  (4, 1, 4, 2, true, '00:05:30'),
  (5, 1, 4, 3, false, '00:07:45'),
  (6, 2, 2, 2, true, '00:09:00'),
  (7, 2, 3, 1, false, '00:10:15'),
  (8, 2, 4, 3, true, '00:11:30'),
  (9, 2, 4, 1, false, '00:09:45'),
  (10, 2, 4, 2, true, '00:08:00'),
  (1, 2, 1, 3, true, '00:06:15'),
  (2, 2, 1, 2, false, '00:07:30'),
  (3, 2, 2, 1, true, '00:08:45'),
  (4, 2, 2, 2, true, '00:10:00'),
  (5, 2, 3, 3, false, '00:11:15'),
  (6, 1, 1, 2, true, '00:12:30'),
  (7, 1, 2, 1, false, '00:11:45'),
  (8, 1, 3, 3, true, '00:10:00'),
  (9, 1, 4, 1, false, '00:10:15'),
  (10, 1, 4, 2, true, '00:10:30');


-- Insertion de rebonds
INSERT INTO rebond (id_joueur, id_partie, id_quart_temps, chrono) VALUES
  (1, 1, 1, '00:10:15'),
  (2, 1, 1, '00:10:45'),
  (3, 1, 2, '00:15:15'),
  (4, 1, 2, '00:15:45'),
  (5, 1, 3, '00:20:15'),
  (6, 2, 1, '00:05:15'),
  (7, 2, 1, '00:05:45'),
  (8, 2, 2, '00:10:15'),
  (9, 2, 2, '00:10:45'),
  (10, 2, 3, '00:15:15');
-- Insertion de données de test pour la table passe_decisive avec des chronos variant de 1 à 10 minutes
INSERT INTO passe_decisive (id_joueur, id_partie, id_quart_temps, chrono) VALUES
  (1, 1, 2, '00:00:45'),
  (2, 1, 3, '00:02:00'),
  (3, 1, 3, '00:03:15'),
  (4, 1, 4, '00:05:30'),
  (5, 1, 4, '00:07:45'),
  (6, 2, 2, '00:09:00'),
  (7, 2, 3, '00:10:15'),
  (8, 2, 4, '00:11:30'),
  (9, 2, 4, '00:09:45'),
  (10, 2, 4, '00:08:00'),
  (1, 2, 1, '00:06:15'),
  (2, 2, 1, '00:07:30'),
  (3, 2, 2, '00:08:45'),
  (4, 2, 2, '00:10:00'),
  (5, 2, 3, '00:11:15'),
  (6, 1, 1, '00:12:30'),
  (7, 1, 2, '00:11:45'),
  (8, 1, 3, '00:10:00'),
  (9, 1, 4, '00:10:15'),
  (10, 1, 4, '00:10:30');

-- Insertion de données de test pour la table temps_passe avec des chronos variant de 1 à 10 minutes
INSERT INTO temps_passe (id_joueur, id_partie, id_quart_temps, chrono_entre, chrono_sortie) VALUES
  (1, 1, 2, '00:00:45', '00:01:30'),
  (2, 1, 3, '00:02:00', '00:02:45'),
  (3, 1, 3, '00:03:15', '00:04:00'),
  (4, 1, 4, '00:05:30', '00:06:15'),
  (5, 1, 4, '00:07:45', '00:08:30'),
  (6, 2, 2, '00:09:00', '00:09:45'),
  (7, 2, 3, '00:10:15', '00:11:00'),
  (8, 2, 4, '00:11:30', '00:12:15'),
  (9, 2, 4, '00:09:45', '00:10:30'),
  (10, 2, 4, '00:08:00', '00:08:45'),
  (1, 2, 1, '00:06:15', '00:07:00'),
  (2, 2, 1, '00:07:30', '00:08:15'),
  (3, 2, 2, '00:08:45', '00:09:30'),
  (4, 2, 2, '00:10:00', '00:10:45'),
  (5, 2, 3, '00:11:15', '00:12:00'),
  (6, 1, 1, '00:10:30', '00:11:15'),
  (7, 1, 2, '00:10:45', '00:11:30'),
  (8, 1, 3, '00:10:00', '00:11:15'),
  (9, 1, 4, '00:9:15', '00:11:30'),
  (10, 1, 4, '00:10:30', '00:12:00');


-- MU INSERTION PARTIE

  -- VAOVAO
INSERT INTO joueur_partie (id_joueur, id_partie) VALUES
  (1, 2),
  (2, 2),
  (3, 2),
  (4, 2),
  (5, 2),
  (6, 2),
  (7, 2),
  (8, 2),
  (9, 2),
  (10, 2);