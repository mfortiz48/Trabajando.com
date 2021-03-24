Create table Tb_Servicio( 
Servicio_Id  numeric(10) not  null,
Servicio_Descripcion varchar2(100) not null,
Servicio_Precio numeric(20,2) not null,
Servicio_Estado Numeric(10),
constraint Tb_Servicio_PK primary key (Servicio_Id)
)


