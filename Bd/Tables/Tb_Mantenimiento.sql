Create table Tb_Mantenimiento
( 
Mantenimiento_Id  numeric(10) not  null,
Mantenimiento_Descripcion  varchar(60) not  null,
Mantenimiento_Estados numeric(10) not  null,
Mantenimiento_Vehiculos numeric(10) not null,
Mantenimiento_Mecanicos  numeric(10) not  null,
constraint Tb_Mantenimiento_PK primary key (Mantenimiento_Id)
)
