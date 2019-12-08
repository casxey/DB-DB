
CREATE TABLE `disciplines` (
  `id_disciplines` int(11) NOT NULL AUTO_INCREMENT,
  `name_disciplines` varchar(255) NOT NULL,
  PRIMARY KEY (`id_disciplines`)
) ;

CREATE TABLE `investors` (
  `id_invest` int(11) NOT NULL AUTO_INCREMENT,
  `name_invest` varchar(255) NOT NULL,
  PRIMARY KEY (`id_invest`)
) ;

CREATE TABLE `result` (
  `id_result` int(11) NOT NULL AUTO_INCREMENT,
  `name_result` varchar(255) NOT NULL,
  PRIMARY KEY (`id_result`)
) ;

CREATE TABLE `organisation` (
  `id_organis` int(11) NOT NULL AUTO_INCREMENT,
  `name_organis` varchar(255) NOT NULL,
  `id_invest` int(11) NOT NULL,
  PRIMARY KEY (`id_organis`),
  FOREIGN KEY(id_invest) REFERENCES investors(id_invest)
) ;

CREATE TABLE `teams` (
  `id_teams` int(11) NOT NULL AUTO_INCREMENT,
  `name_teams` varchar(255) NOT NULL,
  `id_organis` int(11) NOT NULL,
  `id_disciplines` int(11) NOT NULL,
  `id_result` int(11) NOT NULL,
  PRIMARY KEY (`id_teams`),
  FOREIGN KEY(id_organis) REFERENCES organisation(id_organis),
  FOREIGN KEY(id_disciplines) REFERENCES disciplines(id_disciplines),
  FOREIGN KEY(id_result) REFERENCES result(id_result)
) ;

CREATE TABLE `tournament` (
  `id_tour` int(11) NOT NULL AUTO_INCREMENT,
  `name_tour` varchar(255) NOT NULL,
  `id_disciplines` int(11) NOT NULL,
  `id_invest` int(11) NOT NULL,
  `id_teams` int(11) NOT NULL,
  PRIMARY KEY (`id_tour`),
  FOREIGN KEY(id_disciplines) REFERENCES disciplines(id_disciplines),
  FOREIGN KEY(id_invest) REFERENCES investors(id_invest),
  FOREIGN KEY(id_teams) REFERENCES teams(id_teams)
) ;

-- SELECT t.name_tour,i.name_teams AS name_teams, d.name_result AS name_result
-- FROM tournament t
-- INNER JOIN teams i ON t.id_teams = i.id_teams
-- INNER JOIN result d ON t.id_result = d.id_result;

-- SELECT  u.name_comp,i.name_invest AS name_invest, d.name_dom AS name_dom
-- FROM company u
-- INNER JOIN investors i ON u.id_invest = i.id_invest
-- INNER JOIN domain d ON u.id_domain = d.id_domain;

SELECT  u.name_tour AS name_tour, i.name_teams AS name_teams, t.name_result AS name_result
FROM tournament u
INNER JOIN teams i ON u.id_teams = i.id_teams
INNER JOIN investors t ON u.id_result = t.id_result; 


