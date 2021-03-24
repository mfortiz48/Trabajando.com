Alter  table Tb_MtoServicio
add constraint MtoServicio_FK_Repuesto
FOREIGN KEY (MtoServicio_Repuestos) REFERENCES Tb_Repuesto(Repuesto_Id);