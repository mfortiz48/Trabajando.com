Create table Tb_Repuesto( 
Repuesto_Id  numeric(10) not  null,
Repuesto_Marca varchar2(25) not null,
Repuesto_Modelo varchar2(25) not null,
Repuesto_Referencia varchar2(25),
Repuesto_Precio numeric(15,2) not null,
constraint Tb_Repuesto_PK primary key (Repuesto_Id)
)


