Alter  table Tb_FacturaDetalle
add constraint FacturaDetalle_FK_FctaEnc
FOREIGN KEY (FACTURADETALLE_FCTAENC) REFERENCES Tb_FacturaEncabezado(FacturaEncabezado_Id);