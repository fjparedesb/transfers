CREATE TABLE IF NOT EXISTS `transfers`.`tbl_unid` (
  `idcia` BIGINT NOT NULL,
  `idprov` BIGINT NOT NULL,
  `idunid` BIGINT NOT NULL,
  `codigo` VARCHAR(12) NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `plazas` SMALLINT NOT NULL,
  `usralta` BIGINT NOT NULL,
  `fecha_alta` DATE NOT NULL,
  `hora_alta` VARCHAR(8) NOT NULL,
  `usrupd` BIGINT NOT NULL,
  `fecha_upd` DATE NOT NULL,
  `hora_upd` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`idcia`, `idprov`, `idunid`),
  CONSTRAINT `fk_tbl_unid_tbl_prov`
    FOREIGN KEY (`idcia` , `idprov`)
    REFERENCES `transfers`.`tbl_prov` (`idcia` , `idprov`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB