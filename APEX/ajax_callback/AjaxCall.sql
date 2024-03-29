DECLARE
    v_deptno   number;
    v_loc    VARCHAR2 (50);
    v_dname    VARCHAR2 (50);
    v_Mgr     Number(10);
    vPRODUCT_ID VARCHAR2 (50);
    vRM_QTY Number(10);
    vWASTAGE_QTY Number(10);
    vPUR_PRICE Number(10);
    vMU VARCHAR2 (20);
   
   CURSOR cur_c
   IS
     SELECT  COMPANY_ID,
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
       WHERE PROD_TYPE_ID = APEX_APPLICATION.g_x01; ---:PRODUCT_ID;--- 
     
BEGIN
   FOR c IN cur_c
   LOOP
       
        vPRODUCT_ID := c.PRODUCT_ID;
        vRM_QTY:= c.RM_QTY;
        vWASTAGE_QTY:= c.WASTAGE_QTY;
        vPUR_PRICE := c.PUR_PRICE;
        vMU := c.MU;
   END LOOP;

   OWA_UTIL.mime_header ('text/xml', FALSE);
   HTP.p ('Cache-Control: no-cache');
   HTP.p ('Pragma: no-cache');
   OWA_UTIL.http_header_close;
   HTP.prn ('<body>');
   HTP.prn ('<desc>this xml genericly sets multiple items</desc>');
   HTP.prn ('<item id="'||APEX_APPLICATION.g_x02||'">'|| vPRODUCT_ID || '</item>');
   HTP.prn ('<item id="'||APEX_APPLICATION.g_x03||'">'|| vRM_QTY || '</item>');
   HTP.prn ('<item id="'||APEX_APPLICATION.g_x04||'">'|| vWASTAGE_QTY || '</item>');
   HTP.prn ('<item id="'||APEX_APPLICATION.g_x05||'">'|| vPUR_PRICE || '</item>');
   HTP.prn ('<item id="'||APEX_APPLICATION.g_x06||'">'|| vMU || '</item>');
   
   HTP.prn ('</body>');
EXCEPTION
   WHEN OTHERS
   THEN
      OWA_UTIL.mime_header ('text/xml', FALSE);
      HTP.p ('Cache-Control: no-cache');
      HTP.p ('Pragma: no-cache');
      OWA_UTIL.http_header_close;
      HTP.prn ('<body>');
      HTP.prn ('<desc>this xml genericly sets multiple items</desc>');
      HTP.prn ('<item id="'||APEX_APPLICATION.g_x02||'">'|| SQLERRM || '</item>');
      HTP.prn ('</body>');
END;


--Java Script--
apex.server.process ("ABC",   
{
    x01: $v('P35_DEPARTMENT_ID'),
    x02: 'P35_DEPARTMENT_NAME',
    x03: 'P35_LOCATION',
},
 { 
  dataType: 'xml',
  loadingIndicator: '#P35_DEPARTMENT_NAME,#P35_LOCATION',
  success: function(gReturn)
    {
            var l_Count = gReturn.getElementsByTagName("item").length;
            for(var i = 0;i<l_Count;i++){
            var l_Opt_Xml = gReturn.getElementsByTagName("item")[i];
            var l_ID = l_Opt_Xml.getAttribute('id');
            var l_El = apex.item(l_ID);
                if(l_Opt_Xml.firstChild){
                var l_Value = l_Opt_Xml.firstChild.nodeValue;
            }else{
                var l_Value = '';
            }
            if(l_El){
                if(l_El.tagName == 'INPUT'){
                    $s(l_ID,l_Value);
                }else if(l_El.tagName == 'SPAN' && 
                l_El.className == 'grabber'){
                    l_El.parentNode.innerHTML = l_Value;
                    l_El.parentNode.id = l_ID;
                }else{
                    $s(l_ID,l_Value);
                }            
            }        
         }    
  }
});