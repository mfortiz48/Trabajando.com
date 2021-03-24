Alter  table Tb_Mantenimiento
add constraint Mantenimiento_FK_Mecanico
FOREIGN KEY (Mantenimiento_Mecanicos) REFERENCES Tb_Mecanico(Mecanico_Id);