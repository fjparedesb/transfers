CREATE TABLE IF NOT EXISTS `transfers`.`tbl_pickup` (
  `idcia` BIGINT NOT NULL,
  `idzona` BIGINT NOT NULL,
  `idpickup` BIGINT NOT NULL AUTO_INCREMENT,
  `codigo` VARCHAR(12) NOT NULL,
  `desc` VARCHAR(80) NOT NULL,
  `ubicacion` VARCHAR(12) NULL,
  `direccion` VARCHAR(100) NULL,
  `estatus` VARCHAR(1) NOT NULL DEFAULT 'A',
  `usralta` BIGINT NOT NULL,
  `fecha_alta` DATE NOT NULL,
  `hora_alta` VARCHAR(8) NOT NULL,
  `usrupd` BIGINT NOT NULL,
  `fecha_upd` DATE NOT NULL,
  `hora_upd` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`idpickup`, `idcia`, `idzona`),
  INDEX `fk_tbl_pickup_tbl_zonas_idx` (`idcia` ASC, `idzona` ASC),
  INDEX `fk_tbl_pickup01` (`codigo` ASC, `idcia` ASC),
  CONSTRAINT `fk_tbl_pickup_tbl_zonas`
    FOREIGN KEY (`idcia` , `idzona`)
    REFERENCES `transfers`.`tbl_zonas` (`idcia` , `idzona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB