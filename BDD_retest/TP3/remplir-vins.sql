##################################################################
# Application : SQL script
# File        : remplir-vins.sql
# Author      : Olivier Hubert (Email:  olivier.hubert@iie.cnam.fr)
# Function    : Fill the structure of the VINS database
#
# Revision    : gabrieli@limsi.fr
# Revision    : Passage à Mysql
##################################################################


##    REMPLISSAGE DE LA TABLE VITICULTEUR (15)

insert into viticulteur (n_viticulteur, nom, vprenom, vville) values (1,'MOULIN','JEAN','MACON');
insert into viticulteur (n_viticulteur, nom, vprenom, vville) values (3,'MORIN','JULES','BENAIS');
insert into viticulteur (n_viticulteur, nom, vprenom, vville) values (4,'VALLEE','CLAUDE','SAINT NICOLAS');
insert into viticulteur (n_viticulteur, nom, vville) values (5,'COULIS DUTHEIL','CHINON');
insert into viticulteur (n_viticulteur, nom, vprenom, vville) values (10,'PARENT','JEAN','MONTHELIE');
insert into viticulteur (n_viticulteur, nom, vville) values (15,'BARANCOURT','TOURS SUR MARNE');
insert into viticulteur (n_viticulteur, nom, vprenom, vville) values (16,'JADOT','LOUIS','BEAUNE');
insert into viticulteur (n_viticulteur, nom, vprenom, vville) values (18,'MEDEVILLE','CHARLES','PREIGNAC');
insert into viticulteur (n_viticulteur, nom, vville) values (21,'LYNCH-BAGES','PAUILLAC');
insert into viticulteur (n_viticulteur, nom, vville) values (23,'CHATEAU MOULIN A VENT','CASTELNAU DU MEDOC');
insert into viticulteur (n_viticulteur, nom, vprenom, vville) values (20,'TISSOT','JACQUES','ARBOIS');
insert into viticulteur (n_viticulteur, nom, vville) values (22,'CHATEAU MONBRISON','MARGAUX');
insert into viticulteur (n_viticulteur, nom, vville) values (24,'PERRIER','REIMS');
insert into viticulteur (n_viticulteur, nom, vville) values (26,'VEUVE CLIQUOT','REIMS');
insert into viticulteur (n_viticulteur, nom, vville) values (27,'RUINHART','REIMS');


##    REMPLISSAGE DE LA TABLE VIN (17)

insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(170,'BOUZY',2002,'CHAMPAGNE',15);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(175,'MEURSAULT',1998,'BOURGOGNE',16);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(180,'SAUTERNES',2000,'BORDEAUX',18);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(184,'PAUILLAC',2000,'BORDEAUX',21);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(190,'MARGAUX',2006,'BORDEAUX',22);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(198,'MOULIS',1999,'BORDEAUX',23);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(186,'CHINON',2006,'LOIRE',4);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(185,'CHINON',2001,'LOIRE',5);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(188,'CHAMBERTIN',1998,'BOURGOGNE',1);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(120,'CHINON',2003,'LOIRE',4);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(191,'SAINT EMILION',1999,'BORDEAUX',18);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(160,'BOURGUEIL',2002,'LOIRE',3);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(128,'BOURGUEIL',2003,'LOIRE',4);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(140,'POMMARD',2004,'BOURGOGNE',10);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(150,'MONTHELIE',2006,'BOURGOGNE',10);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(100,'CHAMPAGNE BRUT',2006,'CHAMPAGNE',24);
insert into vin(n_vin,cru,millesime,region,n_viticulteur)values(200,'BOURGUEIL',2001,'LOIRE',5);

##    REMPLISSAGE DE LA TABLE BUVEUR  (12)

insert into buveur(n_buveur,nom,bprenom,bville) values(1400,'GAUTHIER','ROBERT','PARIS');
insert into buveur(n_buveur,nom,bprenom,bville) values(1500,'FRADET','PHILIPPE','MACON');
insert into buveur(n_buveur,nom,bprenom,bville) values(1300,'JAMET','FLORENCE','VERSAILLES');
insert into buveur(n_buveur,nom,bprenom,bville) values(1200,'MAURY','FRANOIS','PARIS');
insert into buveur(n_buveur,nom,bprenom,bville) values(1100,'COMBET','ALINE','DIJON');
insert into buveur(n_buveur,nom,bprenom,bville) values(1600,'DUPOND','ALAIN','PARIS');
insert into buveur(n_buveur,nom,bprenom,bville) values(1700,'COMBES','EDOUARD','PARIS');
insert into buveur(n_buveur,nom,bprenom,bville) values(1350,'GRAVINEL','SOPHIE','NICE');
insert into buveur(n_buveur,nom,bprenom,bville) values(1450,'PASCAL','YVES','MACON');
insert into buveur(n_buveur,nom,bprenom,bville) values(1750,'DURIEUX','BLAISE','CHINON');
insert into buveur(n_buveur,nom,bprenom,bville) values(1850,'DURIEUX','MARIE','PARIS');
insert into buveur(n_buveur,nom,bprenom,bville) values(1460,'GAUTHIER','PAUL','PARIS');

##    REMPLISSAGE DE LA TABLE COMMANDE (10)

insert into commande(n_commande,n_buveur,n_vin,cqtte,cdate) values(8,1400,140,12,'2010-01-10');
insert into commande(n_commande,n_buveur,n_vin,cqtte,cdate) values(3,1500,188,12,'2009-09-10');
insert into commande(n_commande,n_buveur,n_vin,cqtte,cdate) values(2,1500,100,18,'2008-11-20');
insert into commande(n_commande,n_buveur,n_vin,cqtte,cdate) values(4,1600,175,6,'2008-02-12');
insert into commande(n_commande,n_buveur,n_vin,cqtte,cdate) values(5,1300,140,6,'2008-03-18');
insert into commande(n_commande,n_buveur,n_vin,cqtte,cdate) values(1,1600,190,6,'2009-06-30');
insert into commande(n_commande,n_buveur,n_vin,cqtte,cdate) values(6,1100,140,12,'2010-12-24');
insert into commande(n_commande,n_buveur,n_vin,cqtte,cdate) values(7,1200,188,12,'2010-12-24');
insert into commande(n_commande,n_buveur,n_vin,cqtte,cdate) values(11,1200,140,12,'2010-12-12');
insert into commande(n_commande,n_buveur,n_vin,cqtte,cdate) values(12,1100,120,6,'2009-12-13');

##    REMPLISSAGE DE LA TABLE LIVRAISON (7)

insert into livraison (n_commande,lqtte,ldate) values(2,12,'2008-11-30');
insert into livraison (n_commande,lqtte,ldate) values(1,6,'2009-07-20');
insert into livraison (n_commande,lqtte,ldate) values(2,6,'2008-12-20');
insert into livraison (n_commande,lqtte,ldate) values(3,12,'2009-10-23');
insert into livraison (n_commande,lqtte,ldate) values(4,6,'2009-01-11');
insert into livraison (n_commande,lqtte,ldate) values(6,6,'2011-01-15');
insert into livraison (n_commande,lqtte,ldate) values(7,6,'2010-12-28');

