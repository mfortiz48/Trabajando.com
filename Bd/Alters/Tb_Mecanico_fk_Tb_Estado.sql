Alter  table Tb_Mecanico 
add constraint Mecanico_FK_Estado 
FOREIGN KEY (Mecanico_Estados) REFERENCES Tb_Estado(Estado_Id);


