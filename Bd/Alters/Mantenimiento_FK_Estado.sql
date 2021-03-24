Alter  table Tb_Mantenimiento 
add constraint Mantenimiento_FK_Estado
FOREIGN KEY (Mantenimiento_Estados) REFERENCES Tb_EstadoMto(EstadoMto_Id);


