Create table Tb_Vehiculo( 
Vehiculo_Id  numeric(10) not  null,
Vehiculo_Matricula varchar2(9) not null,
Vehiculo_Marca varchar2(20) not null,
Vehiculo_Modelo varchar2(20),
Vehiculo_Presupuesto Numeric(8),
Vehiculo_Clientes numeric(10),
constraint Tb_Vehiculo_PK primary key (Vehiculo_Id)
)


