Create table Tb_Cliente( 
Cliente_Id  numeric(10) not  null,
Cliente_Dni varchar2(15) not null,
Cliente_Nombre_1 varchar2(25) not null,
Cliente_Nombre_2 varchar2(25),
Cliente_Apellido_1 varchar2(25) not null,
Cliente_Apellido_2 varchar2(25),
Cliente_Tpo_Dni numeric(25)  not null,
Cliente_Telefono varchar2(20),
Cliente_Direccion varchar2(40),
Cliente_Email varchar2(40), 
constraint Tb_Cliente_PK primary key (Cliente_Id)
)


