Create or replace  PACKAGE  Pq_Facturacion AS 
--
function Obtener_Impuesto(p_nombre tb_impuesto.impuesto_descripcion%type) return tb_impuesto.impuesto_valor%type;
--


--
procedure Generar_Encabezado(p_cliente tb_cliente.cliente_dni%type);
--


/*
--
procedure Generar_Detalle(p_cliente tb_facturaencabezado.facturaencabezado_id%type);
--

*/



END Pq_Facturacion; 
/

CREATE OR REPLACE Package Body Pq_Facturacion AS 
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
--




function Obtener_Impuesto(p_nombre tb_impuesto.impuesto_descripcion%type) return tb_impuesto.impuesto_valor%type AS 

--
v_impuesto_valor   tb_impuesto.impuesto_valor%type;
--

 --
 cursor c_impuesto is
 select impuesto_valor 
   from tb_impuesto 
  where impuesto_descripcion = p_nombre;
 --
  --
  BEGIN
    --
    begin
    
      --
       open c_impuesto;
      fetch c_impuesto into v_impuesto_valor;
            --
            if (c_impuesto%NotFound) then 
                close c_impuesto; 
                raise_application_error( -20000, 'No se encuentra el valor del impuesto :' || p_nombre );
            end  if;  
            -- 
      close c_impuesto;      
      --  
      return v_impuesto_valor;
   END; 
   --
EXCEPTION
     WHEN OTHERS THEN
       raise;


end Obtener_Impuesto;
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
procedure Generar_Encabezado (p_cliente tb_cliente.cliente_dni%type
                              ) is  

--
v_Cliente_Id      Tb_Cliente.Cliente_Id%type;
v_Mecanico_Id     Tb_Mecanico.Mecanico_Id%type;
v_Factura_Fecha   Tb_FacturaEncabezado.FacturaEncabezado_Fecha%type;  
v_Fecha           date;
--

 --
 Cursor c_cliente is  
 select Cliente_Id  
   From Tb_Cliente
  Where Cliente_Dni = nvl(p_cliente,0);
 --


--
cursor c_mecanicos(pc_cliente_Id Tb_Cliente.Cliente_Id%type  ) is
select mto.mantenimiento_mecanicos
  from Tb_Mantenimiento mto,
       Tb_EstadoMto est,
       Tb_Vehiculo veh	   
 where mto.Mantenimiento_Estados = est.EstadoMto_Id
   and mto.Mantenimiento_Vehiculos = veh.Vehiculo_Id 
   and est.EstadoMto_Descripcion  = 'Cerrado' 
   and veh.Vehiculo_Clientes = pc_cliente_Id;

 --
 BEGIN 

	begin
	v_Fecha := sysdate;

    --
	  open c_cliente ;
	 fetch c_cliente into v_Cliente_Id;
	 close c_cliente ;
	--


	--
	  open c_mecanicos(v_Cliente_Id) ;
     fetch c_mecanicos into    v_Mecanico_Id;
     close c_mecanicos; 	 
	--



	--
	insert into tb_facturaencabezado
	( FACTURAENCABEZADO_CLIENTES,
	  FACTURAENCABEZADO_MECANICOS,
	  FACTURAENCABEZADO_FECHA	
	)
	values
	(v_Cliente_Id,
	 v_Mecanico_Id,
	 v_Fecha	
	);

 END;
-- 
 EXCEPTION
     WHEN OTHERS THEN
       raise;
 --
 --
 end  Generar_Encabezado;

 

END  Pq_Facturacion;