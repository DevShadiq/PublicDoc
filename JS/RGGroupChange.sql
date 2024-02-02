/** @format */

$('#P4_RG').on('change', function () {
  $val = apex.item('P4_RG').getValue();
  if ($val == 63) {
    $('label[for=P4_CHALLAN_NO],#P4_CHALLAN_NO, #P4_CHALLAN_NO_lov_btn').show();
    $(
      'label[for=P4_FROMYYYYMM],#P4_FROMYYYYMM, label[for=P4_TOYYYYMM],#P4_TOYYYYMM, label[for=P4_FORM_DATE],#P4_FORM_DATE,  label[for=P4_TO_DATE],#P4_TO_DATE, label[for=P4_UNIT],#P4_UNIT, .ui-datepicker-trigger'
    ).hide();
    $(
      'label[for=P4_DISTRIBUTOR],#P4_DISTRIBUTOR,#P4_DISTRIBUTOR_lov_btn,label[for=P4_PRODUCT],#P4_PRODUCT,#P4_PRODUCT_lov_btn'
    ).hide();
  } else if ($val == 1 || $val == 2 || $val == 5) {
    $(
      'label[for=P4_FORM_DATE],#P4_FORM_DATE,  label[for=P4_TO_DATE],#P4_TO_DATE, label[for=P4_UNIT],#P4_UNIT, .ui-datepicker-trigger'
    ).show();
    $(
      'label[for=P4_FROMYYYYMM],#P4_FROMYYYYMM, label[for=P4_TOYYYYMM],#P4_TOYYYYMM, label[for=P4_CHALLAN_NO],#P4_CHALLAN_NO,#P4_CHALLAN_NO_lov_btn'
    ).hide();
    $(
      'label[for=P4_DISTRIBUTOR],#P4_DISTRIBUTOR,#P4_DISTRIBUTOR_lov_btn,label[for=P4_PRODUCT],#P4_PRODUCT,#P4_PRODUCT_lov_btn'
    ).hide();
  } else if ($val == 3) {
    $(
      'label[for=P4_FORM_DATE],#P4_FORM_DATE,  label[for=P4_TO_DATE],#P4_TO_DATE, label[for=P4_UNIT],#P4_UNIT,label[for=P4_DISTRIBUTOR],#P4_DISTRIBUTOR,#P4_DISTRIBUTOR_lov_btn, .ui-datepicker-trigger'
    ).show();
    $(
      'label[for=P4_FROMYYYYMM],#P4_FROMYYYYMM, label[for=P4_TOYYYYMM],#P4_TOYYYYMM, label[for=P4_CHALLAN_NO],#P4_CHALLAN_NO,#P4_CHALLAN_NO_lov_btn,label[for=P4_PRODUCT],#P4_PRODUCT,#P4_PRODUCT_lov_btn'
    ).hide();
  } else if ($val == 4) {
    $(
      'label[for=P4_FORM_DATE],#P4_FORM_DATE,  label[for=P4_TO_DATE],#P4_TO_DATE, label[for=P4_UNIT],#P4_UNIT, label[for=P4_PRODUCT],#P4_PRODUCT,#P4_PRODUCT_lov_btn, .ui-datepicker-trigger'
    ).show();
    $(
      'label[for=P4_FROMYYYYMM],#P4_FROMYYYYMM, label[for=P4_TOYYYYMM],#P4_TOYYYYMM,label[for=P4_CHALLAN_NO],#P4_CHALLAN_NO,#P4_CHALLAN_NO_lov_btn,label[for=P4_DISTRIBUTOR],#P4_DISTRIBUTOR,#P4_DISTRIBUTOR_lov_btn'
    ).hide();
  } else if ($val == 6) {
    $(' label[for=P4_PRODUCT],#P4_PRODUCT,#P4_PRODUCT_lov_btn').show();
    $(
      'label[for=P4_FROMYYYYMM],#P4_FROMYYYYMM, label[for=P4_TOYYYYMM],#P4_TOYYYYMM, .ui-datepicker-trigger, label[for=P4_FORM_DATE],#P4_FORM_DATE,  label[for=P4_TO_DATE],#P4_TO_DATE, label[for=P4_UNIT],#P4_UNIT,label[for=P4_CHALLAN_NO],#P4_CHALLAN_NO,#P4_CHALLAN_NO_lov_btn,label[for=P4_DISTRIBUTOR],#P4_DISTRIBUTOR,#P4_DISTRIBUTOR_lov_btn'
    ).hide();
  } else if ($val == 7 || $val == 8) {
    $(
      'label[for=P4_FROMYYYYMM],#P4_FROMYYYYMM, label[for=P4_TOYYYYMM],#P4_TOYYYYMM '
    ).show();
    $(
      'label[for=P4_PRODUCT],#P4_PRODUCT,#P4_PRODUCT_lov_btn, .ui-datepicker-trigger, label[for=P4_FORM_DATE],#P4_FORM_DATE,  label[for=P4_TO_DATE],#P4_TO_DATE, label[for=P4_UNIT],#P4_UNIT,label[for=P4_CHALLAN_NO],#P4_CHALLAN_NO,#P4_CHALLAN_NO_lov_btn,label[for=P4_DISTRIBUTOR],#P4_DISTRIBUTOR,#P4_DISTRIBUTOR_lov_btn'
    ).hide();
  } else if ($val == 9 || $val == 10) {
    $(
      ' .ui-datepicker-trigger, label[for=P4_FORM_DATE],#P4_FORM_DATE,  label[for=P4_TO_DATE],#P4_TO_DATE'
    ).show();
    $(
      'label[for=P4_FROMYYYYMM],#P4_FROMYYYYMM, label[for=P4_TOYYYYMM],#P4_TOYYYYMM ,label[for=P4_PRODUCT],#P4_PRODUCT,#P4_PRODUCT_lov_btn, label[for=P4_UNIT],#P4_UNIT,label[for=P4_CHALLAN_NO],#P4_CHALLAN_NO,#P4_CHALLAN_NO_lov_btn,label[for=P4_DISTRIBUTOR],#P4_DISTRIBUTOR,#P4_DISTRIBUTOR_lov_btn'
    ).hide();
  } else {
    null;
  }
});
