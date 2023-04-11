
var model = apex.region("fgProductDtls").widget().interactiveGrid("getViews", "grid").model;
   var vProdId = model.getFieldKey("PRODUCT_ID");


    var model = apex.region("rmDtls").widget().interactiveGrid("getViews", "grid").model;
    var vrmProdId = model.getFieldKey("BPRODUCT_ID");
    var vbomQty = model.getFieldKey("BOM_QTY");
    var vWqty = model.getFieldKey("W_QTY");
    var vRmRate = model.getFieldKey("RM_RATE");
    var vMu = model.getFieldKey("MU");
apex.server.process ("ABC",   
{
   


    x01: vProdId,
    x02: vrmProdId,
    x03: vbomQty,
    x04: vWqty,
    x05: vRmRate,
    x06: vMu,
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