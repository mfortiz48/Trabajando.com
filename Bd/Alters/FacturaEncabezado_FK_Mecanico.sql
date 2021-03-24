Alter  table Tb_FacturaEncabezado 
add constraint FacturaEncabezado_FK_Mecanico
FOREIGN KEY (FacturaEncabezado_Mecanicos) REFERENCES Tb_Mecanico(Mecanico_Id);