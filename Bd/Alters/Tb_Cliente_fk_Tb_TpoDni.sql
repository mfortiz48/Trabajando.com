Alter  table Tb_Cliente 
add constraint Cliente_FK_TpoDni
FOREIGN KEY (Cliente_Tpo_Dni) REFERENCES Tb_TpoDni(TpoDni_Id);


