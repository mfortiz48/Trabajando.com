select 
re.repuesto_referencia,
count(fd.facturadetalle_repuestos)

from  tb_repuesto re  ,
      tb_FacturaDetalle fd
      
 where re.repuesto_id = fd.FacturaDetalle_Repuestos  
 and  rownum < 100
   
   
   group by re.repuesto_referencia