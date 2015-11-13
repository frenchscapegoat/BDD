CREATE TABLE IF NOT EXISTS `projet billeterie`.`acheteur` (`NumAcheteur` int(1), `NomAcheteur` varchar(10), `PrenomAcheteur` varchar(7), `Ville` varchar(9), `Telephone` varchar(14)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;# MySQL a retourné un résultat vide (aucune ligne).
CREATE TABLE IF NOT EXISTS `projet billeterie`.`evenement` (`NumEv` int(1), `NomEv` varchar(8), `DateEv` varchar(10), `Capacite` int(4)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;# MySQL a retourné un résultat vide (aucune ligne).
CREATE TABLE IF NOT EXISTS `projet billeterie`.`spectateur` (`NumSpe` int(1), `NomSpe` varchar(10), `PrenomSpe` varchar(7), `Age` int(2), `Cdate` varchar(19), `NumAcheteur` int(1), `NumEv` int(1)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;# MySQL a retourné un résultat vide (aucune ligne).
CREATE TABLE IF NOT EXISTS `projet billeterie`.`tarif` (`id` int(1), `Prix` int(2)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;# MySQL a retourné un résultat vide (aucune ligne).
INSERT INTO `projet billeterie`.`acheteur` (`NumAcheteur`, `NomAcheteur`, `PrenomAcheteur`, `Ville`, `Telephone`) VALUES (1, 'Cevite', 'Sakura', 'Palaiseau', '06 00 00 00 01'),
 (2, 'Hitlapo', 'Samir', 'Paris', '06 00 00 00 02'),
 (3, 'Cover', 'Harry', 'Orsay', '06 00 00 00 03'),
 (4, 'Zaito-Frey', 'Melanie', 'Paris', '06 00 00 00 04'),
 (5, 'Goudy', 'Debbie', 'Creil', '06 00 00 00 05');# 5 lignes affectées.
INSERT INTO `projet billeterie`.`evenement` (`NumEv`, `NomEv`, `DateEv`, `Capacite`) VALUES (1, 'Festival', '2015-07-14', 2200),
 (2, 'Gala', '2015-11-24', 1300),
 (3, 'Concerto', '2016-04-07', 3500);# 3 lignes affectées.
INSERT INTO `projet billeterie`.`spectateur` (`NumSpe`, `NomSpe`, `PrenomSpe`, `Age`, `Cdate`, `NumAcheteur`, `NumEv`) VALUES (1, 'Cevite', 'Sakura', 32, '2015-01-10 14:31:17', 1, 3),
 (2, 'Cevite', 'Chico', 6, '2015-01-11 14:31:17', 1, 3),
 (3, 'Hitlapo', 'Samir', 19, '2015-11-02 23:19:07', 2, 2),
 (4, 'Cover', 'Harry', 25, '2014-12-24 00:00:43', 3, 3),
 (5, 'Zaito-Frey', 'Melanie', 36, '2015-04-13 09:24:36', 4, 1),
 (6, 'Zaito-Frey', 'Debbie', 71, '2015-04-14 09:24:35', 4, 1),
 (7, 'Ochon', 'Paul', 41, '2015-03-29 10:45:10', 5, 2);# 7 lignes affectées.
INSERT INTO `projet billeterie`.`tarif` (`id`, `Prix`) VALUES (1, 10),
 (2, 25),
 (3, 20);# 3 lignes affectées.
