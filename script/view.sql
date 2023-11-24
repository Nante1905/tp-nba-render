create view v_point_match_joueur as  
select j_p.*, coalesce(p_m.pts, 0) as pts from joueur_partie j_p left outer join (
    select id_partie, id_joueur, sum(valeur) as pts 
    from point_marque 
        where success = true group by id_partie, id_joueur
) as p_m on j_p.id_joueur = p_m.id_joueur and j_p.id_partie = p_m.id_partie;

create view v_rebond_match_joueur as 
select j_p.*, coalesce(r.nbr_rebond, 0) as rebonds from joueur_partie j_p left outer join (
select id_partie, id_joueur, count(*) as nbr_rebond 
    from rebond 
        group by id_partie, id_joueur 
) as r on j_p.id_joueur = r.id_joueur and j_p.id_partie = r.id_partie;


create view v_pd_match_joueur as 
select j_p.*, coalesce(p.nbr_pd, 0) as pd from joueur_partie j_p left outer join (
    select id_partie, id_joueur, count(*) as nbr_pd 
    from passe_decisive 
        group by id_partie, id_joueur
) as p on j_p.id_joueur = p.id_joueur and j_p.id_partie = p.id_partie;

create view v_minute_match_joueur as 
select j_p.*, coalesce(m.min, 0) as min from joueur_partie j_p left outer join (
select id_partie, id_joueur, (EXTRACT(EPOCH FROM sum(chrono_sortie - chrono_entre)) / 60)  as min 
    from temps_passe 
        group by id_partie, id_joueur
) as m on j_p.id_joueur = m.id_joueur and j_p.id_partie = m.id_partie;


create view v_nb_match_joueur as 
select id_joueur, count(*) as nb_match 
    from joueur_partie 
        group by id_joueur;

create view v_tir_total_match_joueur as
select id_partie, id_joueur, valeur, count(*)  as tir
    from point_marque
            group by id_partie, id_joueur, valeur;

create view v_tir_marque_match_joueur as
select id_partie, id_joueur, valeur, count(*)  as tir_marque
    from point_marque
        where success = true
            group by id_partie, id_joueur, valeur;

create view v_stat_pt_match_joueur as
select lf_t.id_partie, lf_t.id_joueur, lf_t.valeur, (coalesce(tir_marque, 0)/tir)*100  as stat
    from v_tir_total_match_joueur lf_t 
        full join v_tir_marque_match_joueur lf_m
            on lf_t.id_joueur = lf_m.id_joueur and lf_t.id_partie = lf_m.id_partie and lf_t.valeur = lf_t.valeur;

-- STAT L_f
create view v_stat_lf_match_joueur as
select j_p.*, coalesce(stat, 0) as stat_lf from joueur_partie j_p left outer join (
    select * from v_stat_pt_match_joueur where valeur = 1
) as stat on j_p.id_joueur = stat.id_joueur and j_p.id_partie = stat.id_partie;

-- STAT 3p
create view v_stat_3p_match_joueur as
select j_p.*, coalesce(stat, 0) as stat_lf from joueur_partie j_p left outer join (
    select * from v_stat_pt_match_joueur where valeur = 3
) as stat on j_p.id_joueur = stat.id_joueur and j_p.id_partie = stat.id_partie;


create view v_total_minute_joueur as select id_joueur, sum(min) min from v_minute_match_joueur group by id_joueur;
create view v_total_pd_joueur as select id_joueur, sum(pd) pd from v_pd_match_joueur group by id_joueur;
create view v_total_point_joueur as select id_joueur, sum(pts) pts from v_point_match_joueur group by id_joueur;
create view v_total_rebond_joueur as select id_joueur, sum(rebonds) rebonds from v_rebond_match_joueur group by id_joueur;
create view v_stat_3p_joueur as select id_joueur, avg(stat_lf) pt_3 from v_stat_3p_match_joueur group by id_joueur;
create view v_stat_lf_joueur as select id_joueur, avg(stat_lf) stat_lf from v_stat_lf_match_joueur group by id_joueur;

create view v_stat_joueur as
select nb.id_joueur, nb_match, 
	(pd.pd/nb_match) pd, 
	(mn.min/nb_match) minutes, 
	(pts/nb_match) points, 
	(r.rebonds/nb_match) rebonds,
	(p3.pt_3) stat_p3,
	(lf.stat_lf) lancer_franc
	from v_nb_match_joueur nb
		join v_total_pd_joueur pd on pd.id_joueur = nb.id_joueur
		join v_total_minute_joueur mn on mn.id_joueur = nb.id_joueur
		join v_total_point_joueur pts on pts.id_joueur = nb.id_joueur
		join v_total_rebond_joueur r on r.id_joueur = nb.id_joueur
		join v_stat_3p_joueur p3 on p3.id_joueur = nb.id_joueur
		join v_stat_lf_joueur lf on lf.id_joueur = nb.id_joueur
	order by points desc;