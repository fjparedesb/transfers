CREATE TABLE IF NOT EXISTS `transfers`.`tbl_pais` (
  `idpais` VARCHAR(3) NOT NULL,
  `nombre` VARCHAR(70) NOT NULL,
  `estatus` VARCHAR(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idpais`))
ENGINE = InnoDB