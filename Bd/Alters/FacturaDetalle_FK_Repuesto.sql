Alter  table Tb_FacturaDetalle
add constraint FacturaDetalle_FK_Repuesto
FOREIGN KEY (FACTURADETALLE_Repuestos) REFERENCES Tb_Repuesto(Repuesto_Id);