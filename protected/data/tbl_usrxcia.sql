CREATE TABLE `tbl_usrxcia` (
  `idusrxcia` bigint(20) NOT NULL,
  `iduser` int(11) DEFAULT NULL,
  `idcia` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`idusrxcia`),
  KEY `tbl_usrxcia_tbl_cia_idx` (`idcia`),
  CONSTRAINT `fx_tbl_usrxcia_tbl_cia` FOREIGN KEY (`idcia`) REFERENCES `tbl_cia` (`idcia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
