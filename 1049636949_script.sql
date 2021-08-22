CREATE DATABASE IF NOT EXISTS bd_campeonato;

CREATE TABLE IF NOT EXISTS `bd_campeonato`.`equipos` (
  `id` INT(4) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `bd_campeonato`.`usuarios` (
  `id` INT(4) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `correo` VARCHAR(50) NOT NULL,
  `username` VARCHAR(10) NOT NULL,
  `password` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `bd_campeonato`.`partidos` (
  `id` INT(4) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` INT(4) unsigned  NOT NULL,
  `local` INT(4) unsigned  NOT NULL,
  `visitante` INT(4) unsigned NOT NULL,
  `fecha` DATE NOT NULL,
  `goles_local` INT(4),
  `goles_visitante` INT(4),
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

ALTER TABLE bd_campeonato.partidos
ADD FOREIGN KEY (visitante) REFERENCES equipos(id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE bd_campeonato.partidos
ADD FOREIGN KEY (local) REFERENCES equipos(id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE bd_campeonato.partidos
ADD FOREIGN KEY (usuario) REFERENCES usuarios(id)
ON DELETE CASCADE
ON UPDATE CASCADE;

INSERT INTO bd_campeonato.usuarios (nombre, correo, username, password) VALUES ("juan", "juan@juan", "ju4n", "03ac674216");

INSERT INTO bd_campeonato.equipos (nombre) VALUES ("Nacional");
INSERT INTO bd_campeonato.equipos (nombre) VALUES ("Junior");
INSERT INTO bd_campeonato.equipos (nombre) VALUES ("Millonarios");
INSERT INTO bd_campeonato.equipos (nombre) VALUES ("Santa Fe");
INSERT INTO bd_campeonato.equipos (nombre) VALUES ("Chico");
INSERT INTO bd_campeonato.equipos (nombre) VALUES ("Deportivo Cali");
INSERT INTO bd_campeonato.equipos (nombre) VALUES ("America de Cali");
INSERT INTO bd_campeonato.equipos (nombre) VALUES ("DIM");
INSERT INTO bd_campeonato.equipos (nombre) VALUES ("AB");
INSERT INTO bd_campeonato.equipos (nombre) VALUES ("DT");