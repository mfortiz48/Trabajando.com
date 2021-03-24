Alter  table Tb_Mantenimiento 
add constraint Mantenimiento_FK_Vehiculo
FOREIGN KEY (Mantenimiento_Vehiculos) REFERENCES Tb_Vehiculo(Vehiculo_Id);


