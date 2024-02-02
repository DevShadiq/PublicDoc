/** @format */

var v_server = $('#P_REP_SERVER').val();
var v_format = $('#P_FORMAT').val();
var v_login = $('#P_LOGON_USER').val();
var v_path = $('#P_REP_PATH').val();

var v_fdate = $('#P10_FORM_DATE').val();
var v_tdate = $('#P10_TO_DATE').val();
var v_unit = $('#P10_UNIT').val();
//var v_dist = $('#').val();
var v_prod = $('#P10_PRODUCT_ID').val();

var v_items_id = $('#P10_ITEM_ID').val();

var v_com = $('#G_COMPANY_ID').val();

$('#P10_RG').on('change', function () {
  $val = apex.item('P10_RG').getValue();
});
//purchase_book.RDF&P_From_DATE&P_To_DATE&p_dist_id
if ($val == 1) {
  window.open(
    v_server +
      v_format +
      v_login +
      v_path +
      '\\Reports\\MUSHAK_61.RDF&P_FROM_DATE=' +
      v_fdate +
      v_path +
      '\\Reports\\MUSHAK_61.RDF&P_TO_DATE=' +
      v_tdate +
      v_path +
      '\\Reports\\MUSHAK_61.RDF&p_dist_id=' +
      v_items_id +
      v_path +
      '\\Reports\\MUSHAK_61.RDF&G_COMPANY_ID=' +
      v_com
  );

  //SALES_BOOK.RDF&p_dist_id&p_UNIT=13
} else if ($val == 2) {
  window.open(
    v_server +
      v_format +
      v_login +
      v_path +
      '\\Reports\\SALES_BOOK.RDF&P_FROM_DATE=' +
      v_fdate +
      v_path +
      '\\Reports\\SALES_BOOK.RDF&P_TO_DATE=' +
      v_tdate +
      v_path +
      '\\Reports\\SALES_BOOK.RDF&p_dist_id=' +
      v_prod +
      v_path +
      '\\Reports\\SALES_BOOK.RDF&P_UNIT=' +
      v_unit +
      v_path +
      '\\Reports\\SALES_BOOK.RDF&G_COMPANY_ID=' +
      v_com
  );
  //MUSHAK_621.RDF&p_dist_id=700016
} else if ($val == 11) {
  window.open(
    v_server +
      v_format +
      v_login +
      v_path +
      '\\Reports\\MUSHAK_61_t.RDF&P_FROM_DATE=' +
      v_fdate +
      v_path +
      '\\Reports\\MUSHAK_61_t.RDF&P_TO_DATE=' +
      v_tdate +
      v_path +
      '\\Reports\\MUSHAK_61_t.RDF&p_dist_id=' +
      v_prod +
      v_path +
      '\\Reports\\MUSHAK_61_t.RDF&P_UNIT=' +
      v_unit +
      v_path +
      '\\Reports\\MUSHAK_61_t.RDF&G_COMPANY_ID=' +
      v_com
  );
  //MUSHAK_621.RDF&p_dist_id=700016
} else if ($val == 3) {
  window.open(
    v_server +
      v_format +
      v_login +
      v_path +
      '\\Reports\\MUSHAK_621.RDF&P_FROM_DATE=' +
      v_fdate +
      v_path +
      '\\Reports\\MUSHAK_621.RDF&P_TO_DATE=' +
      v_tdate +
      v_path +
      '\\Reports\\MUSHAK_621.RDF&P_DIST_ID=' +
      v_prod
  );
  //MUSHAK_610.RDF&P_FROM_DATE
} else if ($val == 4) {
  window.open(
    v_server +
      v_format +
      v_login +
      v_path +
      '\\Reports\\MUSHAK_610.RDF&P_FROM_DATE=' +
      v_fdate +
      v_path +
      '\\Reports\\MUSHAK_610.RDF&P_TO_DATE=' +
      v_tdate
  );
  //MUSHAK_91_U.RDF&P_date1=01
} else if ($val == 5) {
  window.open(
    v_server +
      v_format +
      v_login +
      v_path +
      '\\Reports\\MUSHAK_91_U.RDF&P_date1=' +
      v_fdate +
      v_path +
      '\\Reports\\MUSHAK_91_U.RDF&P_date2=' +
      v_tdate +
      v_path +
      '\\Reports\\MUSHAK_91_U.RDF&G_COMPANY_ID=' +
      v_com
  );
} else {
  alert('Sorry not selected!');
}
