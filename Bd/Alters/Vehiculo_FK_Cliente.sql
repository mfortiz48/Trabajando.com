Alter  table Tb_vehiculo 
add constraint Vehiculo_FK_Cliente
FOREIGN KEY (Vehiculo_Clientes) REFERENCES Tb_Cliente(Cliente_Id);


