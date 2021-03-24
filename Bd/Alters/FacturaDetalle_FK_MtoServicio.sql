Alter  table Tb_FacturaDetalle
add constraint FacturaDetalle_FK_MtoServicio
FOREIGN KEY (FACTURADETALLE_MtosSer) REFERENCES Tb_MtoServicio(MtoServicio_Id);