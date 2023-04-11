DECLARE
   DEPT      NUMBER (5);
   SAL_Y     VARCHAR2 (4);
   SAL_M     VARCHAR2 (2);

   CURSOR c1
   IS
      SELECT COMPANY_ID,
             PF_NO,
             PRODUCT_ID,
             RM_QTY,
             VAT_TYPE,
             UVPRICE,
             WASTAGE_QTY,
             MU,
             PCT,
             GL,
             PUR_PRICE
        FROM BOM_VIEW
       WHERE PROD_TYPE_ID = :PRODUCT_ID;


   
   c1_rec    c1%ROWTYPE;
   counter   NUMBER;
BEGIN
  
   OPEN c1;

   LOOP
      FETCH c1 INTO c1_rec;

      EXIT WHEN c1%NOTFOUND;

      SELECT COUNT (*)
        INTO counter
        FROM goods_rec_d1
       WHERE     product_id = c1_rec.product_id
             AND COMPANY_ID = c1_rec.COMPANY_ID;

      IF COUNTER < 1
      THEN
         INSERT INTO goods_rec_d1 (REC_BATCH_ID,
                                   GRR_NO,
                                   PRODUCT_ID,
                                   BPRODUCT_ID,
                                   BOM_QTY,
                                   W_QTY,
                                   RM_RATE,
                                   MU)
              VALUES (:P34_REC_BATCH_ID,
                      :GRR_NO,
                      :PRODUCT_ID,
                      c1_rec.PRODUCT_ID,
                      c1_rec.RM_QTY,
                      c1_rec.WASTAGE_QTY,
                      c1_rec.PUR_PRICE,
                      c1_rec.MU);
      END IF;

      counter := NULL;
   END LOOP;

   COMMIT;
   
END;