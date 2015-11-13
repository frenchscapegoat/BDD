#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: ACHETEUR
#------------------------------------------------------------

CREATE TABLE ACHETEUR(
        NumAcheteur    int (11) Auto_increment  NOT NULL , -- PK et notnull
        NomAcheteur    Varchar (25) ,
        PrenomAcheteur Varchar (25) ,
        Ville          Varchar (25) ,
        Mail           Varchar (255) ,
        Telephone      Varchar (25) , -- excactement 10 chiffres
		CONSTRAINT CK_Acheteur_Telephone CHECK (Telephone between 0600000000 and 0799999999),
        PRIMARY KEY (NumAcheteur )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: SPECTATEUR
#------------------------------------------------------------

CREATE TABLE SPECTATEUR(
        NumSpe      int (11) Auto_increment  NOT NULL , -- PK et notnull
        NomSpe      Varchar (25) ,
        PrenomSpe   Varchar (25) ,
        Age         Int CHECK (Age>0), -- et >0
        Cdate       Date ,
        NumAcheteur Int ,-- FK
        NumEv       Int ,-- FK evenement.NumEv
        PRIMARY KEY (NumSpe ),
		CONSTRAINT CK_spectateur_age CHECK (Age>1)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: EVENEMENT
#------------------------------------------------------------

CREATE TABLE EVENEMENT(
        NumEv    int (11) Auto_increment  NOT NULL ,-- PK et notnull
        NomEv    Varchar (25) ,
        DateEv   Date ,
        Capacite Int NOT NULL,-- Notnull,
        PRIMARY KEY (NumEv )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: TARIF
#------------------------------------------------------------

CREATE TABLE TARIF(
        id   int (11) Auto_increment  NOT NULL ,-- PK et notnull
        Prix Double , -- et pas <0
        PRIMARY KEY (id ),
		CONSTRAINT CK_tarif_Prix CHECK (Prix>=0)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: APPLIQUE
#------------------------------------------------------------

CREATE TABLE APPLIQUE(
        NumEv Int NOT NULL ,-- FK
        id    Int NOT NULL ,-- FK
        PRIMARY KEY (NumEv ,id )
)ENGINE=InnoDB;

ALTER TABLE SPECTATEUR ADD CONSTRAINT FK_SPECTATEUR_NumAcheteur FOREIGN KEY (NumAcheteur) REFERENCES ACHETEUR(NumAcheteur);
ALTER TABLE SPECTATEUR ADD CONSTRAINT FK_SPECTATEUR_NumEv FOREIGN KEY (NumEv) REFERENCES EVENEMENT(NumEv);
ALTER TABLE APPLIQUE ADD CONSTRAINT FK_APPLIQUE_NumEv FOREIGN KEY (NumEv) REFERENCES EVENEMENT(NumEv);
ALTER TABLE APPLIQUE ADD CONSTRAINT FK_APPLIQUE_id FOREIGN KEY (id) REFERENCES TARIF(id);
