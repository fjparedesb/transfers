CREATE TABLE IF NOT EXISTS `transfers`.`tbl_zonas` (
  `idcia` BIGINT NOT NULL,
  `idzona` BIGINT NOT NULL AUTO_INCREMENT,
  `codigo` VARCHAR(10) NOT NULL,
  `desc` VARCHAR(120) NOT NULL,
  `estatus` VARCHAR(1) NOT NULL,
  `usralta` BIGINT NOT NULL,
  `fecha_alta` DATE NOT NULL,
  `hora_alta` VARCHAR(8) NOT NULL,
  `usrupd` BIGINT NOT NULL,
  `fecha_upd` DATE NOT NULL,
  `hora_upd` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`idzona`, `idcia`),
  INDEX `fk_tbl_zonas_tbl_cia_idx` (`idcia` ASC),
  CONSTRAINT `fk_tbl_zonas_tbl_cia`
    FOREIGN KEY (`idcia`)
    REFERENCES `transfers`.`tbl_cia` (`idcia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB