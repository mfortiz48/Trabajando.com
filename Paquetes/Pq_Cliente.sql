Create or replace  PACKAGE  Pq_Cliente AS 
procedure Crear_Cliente (p_dni          tb_cliente.cliente_dni%type,
                        p_nombre_1     tb_cliente.cliente_nombre_1%type,
                        p_nombre_2     tb_cliente.cliente_nombre_2%type,
                        p_apellido_1   tb_cliente.cliente_apellido_1%type,
                        p_apellido_2   tb_cliente.cliente_apellido_2%type,
                        p_tpo_dni      tb_cliente.cliente_tpo_dni%type,
                        p_telefono     tb_cliente.cliente_telefono%type,
                        p_direccion    tb_cliente.cliente_direccion%type,
                        p_email        tb_cliente.cliente_email%type,
					    p_msg          out varchar2
                       );
--


--
procedure Actualizar_Cliente(p_Id           tb_cliente.cliente_Id%type,
                             p_dni          tb_cliente.cliente_dni%type,
                             p_nombre_1     tb_cliente.cliente_nombre_1%type,
                             p_nombre_2     tb_cliente.cliente_nombre_2%type,
                             p_apellido_1   tb_cliente.cliente_apellido_1%type,
                             p_apellido_2   tb_cliente.cliente_apellido_2%type,
                             p_tpo_dni      tb_cliente.cliente_tpo_dni%type,
                             p_telefono     tb_cliente.cliente_telefono%type,
                             p_direccion    tb_cliente.cliente_direccion%type,
                             p_email        tb_cliente.cliente_email%type,
							 p_msg          out varchar2
                       );
--


--
procedure Eliminar_Cliente(p_Id           tb_cliente.cliente_id%type, 
                           p_msg           out varchar2);
--


--
procedure Consultar_Cliente(P_CURSOR OUT SYS_REFCURSOR);
--                         

procedure Consultar_Cliente_Id(P_Id        tb_cliente.cliente_Id%type,
                               P_CURSOR    OUT SYS_REFCURSOR);


END Pq_Cliente; 
/

CREATE OR REPLACE Package Body Pq_Cliente AS 
--
procedure Crear_Cliente(p_dni           tb_cliente.cliente_dni%type,
                        p_nombre_1      tb_cliente.cliente_nombre_1%type,
                        p_nombre_2      tb_cliente.cliente_nombre_2%type,
                        p_apellido_1    tb_cliente.cliente_apellido_1%type,
                        p_apellido_2    tb_cliente.cliente_apellido_2%type,
                        p_tpo_dni       tb_cliente.cliente_tpo_dni%type,
                        p_telefono      tb_cliente.cliente_telefono%type,
                        p_direccion     tb_cliente.cliente_direccion%type,
                        p_email         tb_cliente.cliente_email%type,
						p_msg           out varchar2
                       )AS 
                      
  --
  BEGIN
    --
    begin 
      --
     insert into Tb_Cliente
     ( tb_cliente.cliente_dni,
       tb_cliente.cliente_nombre_1,
       tb_cliente.cliente_nombre_2,
       tb_cliente.cliente_apellido_1,
       tb_cliente.cliente_apellido_2,
       tb_cliente.cliente_tpo_dni,
       tb_cliente.cliente_telefono,
       tb_cliente.cliente_direccion,
       tb_cliente.cliente_email
     )
	 values
     (
     p_dni,
     p_nombre_1,
     p_nombre_2,
     p_apellido_1,
     p_apellido_2,
     p_tpo_dni,
     p_telefono,
     p_direccion,
     p_email 
     );       
      --  
     
   END; 
   --
EXCEPTION
     WHEN OTHERS THEN
      p_msg:='Crear_Cliente - '||sqlerrm;
     return;
end Crear_Cliente;
--
--
--
--
--
--
--
--
--
--
--
--
procedure Actualizar_Cliente(p_Id           tb_cliente.cliente_Id%type,
							 p_dni          tb_cliente.cliente_dni%type,
                             p_nombre_1     tb_cliente.cliente_nombre_1%type,
                             p_nombre_2     tb_cliente.cliente_nombre_2%type,
                             p_apellido_1   tb_cliente.cliente_apellido_1%type,
                             p_apellido_2   tb_cliente.cliente_apellido_2%type,
                             p_tpo_dni      tb_cliente.cliente_tpo_dni%type,
                             p_telefono     tb_cliente.cliente_telefono%type,
                             p_direccion    tb_cliente.cliente_direccion%type,
                             p_email        tb_cliente.cliente_email%type,
							 p_msg          out varchar2
							 ) AS 

  --
  BEGIN
    --
    begin 
      --
       Update tb_cliente 
	      set cliente_dni         =  p_dni       ,
		      cliente_nombre_1    =  p_nombre_1  ,
		      cliente_nombre_2    =  p_nombre_2  ,
              cliente_apellido_1  =  p_apellido_1,
              cliente_apellido_2  =  p_apellido_2,
              cliente_tpo_dni     =  p_tpo_dni   ,
              cliente_telefono    =  p_telefono  ,
              cliente_direccion   =  p_direccion ,
			  cliente_email       =  p_email     			  
		where cliente_id          =  p_Id; 	  

END;  
EXCEPTION

     WHEN OTHERS THEN
            p_msg:='Actualizar_Cliente - '||sqlerrm;
			return;
end Actualizar_Cliente;
--
--
--
--
--
--
--
--
--
procedure Eliminar_Cliente(p_Id           tb_cliente.cliente_id%type, 
                          p_msg           out varchar2 
                          ) AS 
  --
  BEGIN
    --
    begin 
      --
      Delete  tb_cliente 
	   where  cliente_Id =  p_Id;
      --     
   END; 
   --
EXCEPTION
     WHEN OTHERS THEN
      p_msg:='Actualizar_Cliente - '||sqlerrm;
	  return;
end Eliminar_Cliente;
--
--
--
--
--
--
--
--
--
--
procedure Consultar_Cliente(P_CURSOR OUT SYS_REFCURSOR) AS 

  --
  BEGIN
    --
    begin 
      --
      
      open P_CURSOR  for 
       select cliente_id   ,
	           cliente_dni       ,
	          cliente_nombre_1  ,
	          cliente_nombre_2  ,
              cliente_apellido_1,
              cliente_apellido_2,
              cliente_tpo_dni   ,
              cliente_telefono  ,
              cliente_direccion ,
              cliente_email                   			  
		 from Tb_Cliente; 	 		 
      --  
   END; 
   --
EXCEPTION
     WHEN OTHERS THEN
raise;
end Consultar_Cliente;








procedure Consultar_Cliente_Id(P_Id        tb_cliente.cliente_Id%type,
							   P_CURSOR OUT SYS_REFCURSOR) AS 

  --
  BEGIN
    --
    begin 
      --
      
      open P_CURSOR  for 
       select cliente_id   ,
	           cliente_dni       ,
	          cliente_nombre_1  ,
	          cliente_nombre_2  ,
              cliente_apellido_1,
              cliente_apellido_2,
              cliente_tpo_dni   ,
              cliente_telefono  ,
              cliente_direccion ,
              cliente_email                   			  
		 from Tb_Cliente
		 where Cliente_Id = P_Id ; 	 		 
      --  
   END; 
   --
EXCEPTION
     WHEN OTHERS THEN
raise;
end Consultar_Cliente;




END
  Pq_Cliente;