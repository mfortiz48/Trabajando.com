Alter  table Tb_Mecanico 
add constraint Mecanico_FK_TpoDni
FOREIGN KEY (Mecanico_Tpo_Dni) REFERENCES Tb_TpoDni(TpoDni_Id);


