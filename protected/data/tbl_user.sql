create table `transfers`.`tbl_user`( 
   `id` bigint NOT NULL AUTO_INCREMENT , 
   `email` varchar(132) NOT NULL , 
   `password` varchar(132) NOT NULL , 
   `nombre` varchar(32) NOT NULL , 
   `apellido` varchar(32) NOT NULL , 
   `estatus` enum('A','B') NOT NULL DEFAULT 'A' COMMENT 'Indica si el usuario esta activo o es baja', 
   `fecha_alta` date NOT NULL DEFAULT '1900-01-01' , 
   `hora_alta` varchar(8) NOT NULL DEFAULT '' , 
   `fecha_upd` date NOT NULL DEFAULT '1900-01-01' , 
   `hora_upd` varchar(8) NOT NULL DEFAULT '' , 
   PRIMARY KEY (`id`)
 )