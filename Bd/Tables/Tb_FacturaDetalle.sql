Create table Tb_FacturaDetalle ( 
FacturaDetalle_Id  numeric(10) not  null,
FacturaDetalle_FctaEnc  numeric(10) not  null,
FacturaDetalle_MtosSer  numeric(10) not  null,
FacturaDetalle_Repuestos  numeric(10) not  null,
FacturaDetalle_Subtotal numeric(15,2) not null,
FacturaDetalle_Descuento numeric(15,2) ,
FacturaDetalle_Total numeric(15,2) not null,
constraint Tb_FacturaDetalle_PK primary key (FacturaDetalle_Id)
)


