CREATE TABLE IF NOT EXISTS `transfers`.`tbl_servtrn` (
  `idcia` BIGINT NOT NULL,
  `idserv` BIGINT NOT NULL AUTO_INCREMENT,
  `codigo` VARCHAR(10) NOT NULL,
  `descripcion` VARCHAR(60) NOT NULL,
  `tipo` VARCHAR(1) NOT NULL,
  `precio` DECIMAL(8,2) NOT NULL,
  `costo` DECIMAL(8,2) NOT NULL,
  `usralta` BIGINT NULL,
  `fecha_alta` DATE NULL,
  `hora_alta` VARCHAR(8) NULL,
  `usrupd` BIGINT NULL,
  `fecha_upd` DATE NULL,
  `hora_upd` VARCHAR(8) NULL,
  PRIMARY KEY (`idserv`, `idcia`),
  INDEX `fx_tbl_servtrn_01` (`codigo` ASC, `idcia` ASC),
  INDEX `fx_tbl_servtrn_tbl_cia_idx` (`idcia` ASC),
  CONSTRAINT `fx_tbl_servtrn_tbl_cia`
    FOREIGN KEY (`idcia`)
    REFERENCES `transfers`.`tbl_cia` (`idcia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB