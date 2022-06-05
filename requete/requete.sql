-- Afficher les departs de nuit : BASIC : UTILITY 10 
 select * from voyage where heure_depart >= '06:00 PM' and heure_depart >= '04:59 AM' ;

-- Afficher les departs de jour : BASIC : UTILITY 10
select * from voyage where heure_depart >= '06:00 AM' and heure_depart <= '05:59 PM' ; 

-- Les clients qui ont choisis tel offre pour tel voyage : EASY : UTILITY 8 
select nom_client , prenom_client , type , voyage.id_voyage from client , reserver , offre , voyage
where client.id_client = reserver.id_client and offre.id_offre = reserver.id_offre and voyage.id_voyage = reserver.id_voyage ;

-- Afficher les noms des clients qui n'ont pas encore payés leurs reservations : EASY : UTILITY 10
select nom_client , prenom_client , montant_paye from client , reserver where client.id_client = reserver.id_client and montant_paye = 0; 
-- (Ceci a necessité un update pour enlever le not null là)

-- afficher les details d'un voyage [jour depart, heure_depart,[ville depart/ville dest]
select id_voyage , jour_depart , heure_depart , nom_ville from voyage , ville where ville.id_ville = voyage.id_ville_arrivee ;
select id_voyage , jour_depart , heure_depart , nom_ville from voyage , ville where ville.id_ville = voyage.id_ville_depart ;

-- Afficher toutes les places reserver 
select place from reserver ;



 
