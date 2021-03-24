Alter  table Tb_Servicio
add constraint Servicio_FK_Estado 
FOREIGN KEY (Servicio_Estado) REFERENCES Tb_Estado(Estado_Id);