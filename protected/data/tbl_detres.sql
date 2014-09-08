CREATE TABLE IF NOT EXISTS `transfers`.`tbl_detres` (
  `idcia` BIGINT NOT NULL,
  `idfolio` BIGINT NOT NULL,
  `consec` DECIMAL(3,0) NOT NULL,
  `nombre` VARCHAR(60) NOT NULL,
  `fecha` DATE NOT NULL,
  `idserv` BIGINT NOT NULL,
  `hora` VARCHAR(5) NOT NULL,
  `hora_pickup` VARCHAR(5) NOT NULL,
  `vuelo` VARCHAR(10) NOT NULL,
  `adultos` DECIMAL(2,0) NOT NULL,
  `menores` DECIMAL(2,0) NOT NULL,
  `redondo` INT NOT NULL,
  `privado` INT NOT NULL,
  `noshow` INT NOT NULL,
  `confirmado` INT NOT NULL,
  `tba` INT NOT NULL,
  `goshow` INT NOT NULL,
  `cancelado` INT NOT NULL,
  `numconf` VARCHAR(30) NOT NULL,
  `idprov` BIGINT NOT NULL,
  `idunid` BIGINT NOT NULL,
  `observacion` VARCHAR(300) NOT NULL,
  `precio` DECIMAL(8,2) NULL,
  `costo` DECIMAL(8,2) NULL,
  `usralta` BIGINT NOT NULL,
  `fecha_alta` DATE NOT NULL,
  `hora_alta` VARCHAR(8) NOT NULL,
  `usrupd` BIGINT NOT NULL,
  `fecha_upd` DATE NOT NULL,
  `hora_upd` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`idcia`, `idfolio`, `consec`),
  CONSTRAINT `fk_tbl_detres_tbl_reservas`
    FOREIGN KEY (`idcia` , `idfolio`)
    REFERENCES `transfers`.`tbl_reservas` (`idcia` , `idfolio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB