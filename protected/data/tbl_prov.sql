CREATE TABLE IF NOT EXISTS `transfers`.`tbl_prov` (
  `idcia` BIGINT NOT NULL,
  `idprov` BIGINT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NOT NULL,
  `codigo` VARCHAR(10) NOT NULL,
  `email` VARCHAR(300) NULL,
  `telefono` VARCHAR(12) NULL,
  `estatus` VARCHAR(1) NOT NULL DEFAULT 'A',
  `usralta` BIGINT NOT NULL,
  `fecha_alta` DATE NOT NULL,
  `hora_alta` VARCHAR(8) NOT NULL,
  `usrupd` BIGINT NOT NULL,
  `fecha_upd` DATE NOT NULL,
  `hora_upd` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`idprov`, `idcia`),
  CONSTRAINT `fk_tbl_prov_tbl_cia`
    FOREIGN KEY (`idcia`)
    REFERENCES `transfers`.`tbl_cia` (`idcia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB