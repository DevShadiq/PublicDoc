


var model = apex.region("fgProductDtls").widget().interactiveGrid("getViews", "grid").model;
var vProdId = model.getFieldKey("PRODUCT_ID");


var model = apex.region("rmDtls").widget().interactiveGrid("getViews", "grid").model;
var vrmProdId = model.getFieldKey("BPRODUCT_ID");
var vbomQty = model.getFieldKey("BOM_QTY");
var vWqty = model.getFieldKey("W_QTY");
var vRmRate = model.getFieldKey("RM_RATE");
var vMu = model.getFieldKey("MU");