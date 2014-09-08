CREATE TABLE `tbl_estados` (
  `idpais` varchar(3) NOT NULL,
  `idestado` varchar(3) NOT NULL,
  `nombre` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`idpais`,`idestado`),
  CONSTRAINT `tbl_pais_idpais` FOREIGN KEY (`idpais`) REFERENCES `tbl_pais` (`idpais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
