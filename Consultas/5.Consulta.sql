SELECT cl.Cliente_Dni, sum (fd.facturadetalle_total)   
  FROM  Tb_FacturaDetalle fd,
         Tb_Cliente cl,
         Tb_facturaencabezado fe
  where  fe.facturaencabezado_fecha > sysdate- 60       
GROUP BY cl.Cliente_Dni
HAVING SUM(facturadetalle_total) = 100000