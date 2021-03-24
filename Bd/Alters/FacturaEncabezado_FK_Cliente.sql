Alter  table Tb_FacturaEncabezado 
add constraint FacturaEncabezado_FK_Cliente 
FOREIGN KEY (FacturaEncabezado_Clientes) REFERENCES Tb_Cliente(Cliente_Id);