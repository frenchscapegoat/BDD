
##################################################################
# Application : SQL script
# File        : mysql-create-base-vins.sql
# Revision    :
# Author      : Olivier Hubert (Email: olivier.hubert@iie.cnam.fr)
# Function    : Create the structure of the VINS database
#
# Revision	: Gabriel.illouz@u-psud.fr
# Comment	: passage à MySQL
#
##################################################################

drop database if exists Vins;

CREATE DATABASE Vins;
use Vins;


create table viticulteur
( n_viticulteur integer ,
  nom           varchar(30),
  Vprenom       varchar(20),
  Vville        varchar(30),
  constraint cleprim_viticulteur primary key(n_viticulteur ) 
);

CREATE TABLE vin(
  n_vin integer,
  cru varchar( 20 ) NOT NULL,
  millesime integer NOT NULL,
  region varchar( 15 ),
  n_viticulteur integer NOT NULL,

  CONSTRAINT cleprim_vin PRIMARY KEY ( n_vin ) ,
  CONSTRAINT cle_etr_viticulteur FOREIGN KEY ( n_viticulteur ) REFERENCES viticulteur(n_viticulteur),
  CONSTRAINT cle2_vin unique(cru, millesime,n_viticulteur),
  # les contraintes suivantes ne sont pas implémentées dans MySQL, peut etre un jour...
  # pas nommer la contrainte is  not null pas trop grave, mais derniere : dommage
  CONSTRAINT cle_etr_n_vitic_nonvide CHECK (n_viticulteur IS NOT NULL),
  CONSTRAINT  cru_nonvide CHECK(cru IS NOT NULL),
  CONSTRAINT millesime_nonvide CHECK( millesime IS NOT NULL),
  CONSTRAINT dom_millesime CHECK (millesime >1970 AND millesime <2003)
);



create table buveur
( n_buveur  integer ,
  nom       varchar(20),
  Bprenom   varchar(20),
  Bville    varchar(30),
  constraint cleprim_buveur primary key(n_buveur)
);

create table commande(
  n_commande integer,
  n_buveur    integer not null, 
  n_vin       integer not null,
  cdate       date    not null,
  cqtte       integer not null,
  constraint cleprim_commande primary key(n_commande),
  constraint cle2_commande unique (n_buveur, n_vin, cdate),
  constraint cle_etr_buveur FOREIGN KEY(n_buveur) references buveur(n_buveur),
  constraint cle_etr_vin FOREIGN KEY(n_vin) references vin(n_vin),
  constraint dom_cqtte check(cqtte =6 OR cqtte = 12 OR
                      cqtte = 18)
);

create table livraison
( 
  n_commande    integer not null,
  ldate          date,
  lqtte          integer not null,
  constraint cleprim_livraison primary key(n_commande, ldate),
  constraint cle_etr_commande FOREIGN KEY(n_commande) references commande(n_commande)
);

 