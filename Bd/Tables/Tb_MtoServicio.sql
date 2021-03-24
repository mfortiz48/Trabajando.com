Create table Tb_MtoServicio
( 
MtoServicio_Id  numeric(10) not  null,
MtoServicio_Descripcion  varchar2(50) not  null,
MtoServicio_Mantenimientos  numeric(10) not  null,
MtoServicio_Servicios  numeric(10) not  null,
MtoServicio_Repuestos  numeric(10) not  null,
constraint Tb_MtoServicio_PK primary key (MtoServicio_Id)
)

