CREATE TABLE IF NOT EXISTS `transfers`.`tbl_reservas` (
  `idcia` BIGINT NOT NULL,
  `idfolio` BIGINT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NOT NULL,
  `pax` DECIMAL(2,0) NOT NULL,
  `adultos` DECIMAL(2,0) NOT NULL,
  `menores` DECIMAL(2,0) NOT NULL,
  `nummov` DECIMAL(3,0) NOT NULL,
  `estatus` VARCHAR(1) NOT NULL,
  `usralta` BIGINT NOT NULL,
  `fecha_alta` DATE NOT NULL,
  `hora_alta` VARCHAR(8) NOT NULL,
  `usrupd` BIGINT NOT NULL,
  `fecha_upd` DATE NOT NULL,
  `hora_upd` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`idfolio`, `idcia`),
  CONSTRAINT `fk_tbl_reservas_tbl_cia`
    FOREIGN KEY (`idcia`)
    REFERENCES `transfers`.`tbl_cia` (`idcia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB