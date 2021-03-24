Alter  table Tb_MtoServicio
add constraint MtoServicio_FK_Servicio
FOREIGN KEY (MtoServicio_Servicios) REFERENCES Tb_Servicio(Servicio_Id);




