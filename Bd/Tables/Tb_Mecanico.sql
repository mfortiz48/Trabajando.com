Create table Tb_Mecanico( 
Mecanico_Id  numeric(10) not  null,
Mecanico_Dni varchar2(15) not null,
Mecanico_Nombre_1 varchar2(25) not null,
Mecanico_Nombre_2 varchar2(25),
Mecanico_Apellido_1 varchar2(25) not null,
Mecanico_Apellido_2 varchar2(25),
Mecanico_Tpo_Dni numeric(25)  not null,
Mecanico_Telefono varchar2(20),
Mecanico_Direccion varchar2(40),
Mecanico_Email varchar2(40),
Mecanico_Estados numeric(10)not null,
constraint Tb_Mecanico_PK primary key (Mecanico_Id)
)
