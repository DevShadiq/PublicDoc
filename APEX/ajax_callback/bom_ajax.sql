DECLARE
   vproduct_id    VARCHAR2 (50);
   vrm_qty        NUMBER (10);
   vwastage_qty   NUMBER (10);
   vpur_price     NUMBER (10);
   vmu            VARCHAR2 (20);
BEGIN
   SELECT PRODUCT_ID,RM_QTY,WASTAGE_QTY,PUR_PRICE,MU
     INTO vproduct_id,vrm_qty,vwastage_qty,vpur_price,vmu
     FROM BOM_VIEW
    WHERE PROD_TYPE_ID = :P34_FG_PRODUCT_ID;

   apex_json.open_object;
   apex_json.write (p_name => 'productid', p_value => vproduct_id);
   apex_json.write (p_name => 'rmqty', p_value => vrm_qty);
   apex_json.write (p_name => 'wastqty', p_value => vwastage_qty);
   apex_json.write (p_name => 'purprice', p_value => vpur_price);
   apex_json.write (p_name => 'uom', p_value => vmu);
   apex_json.close_object;
END;