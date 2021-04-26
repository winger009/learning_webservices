FUNCTION ZMAA_SOAP_GET.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(ID_IMPORT) TYPE  SFLIGHT
*"  EXPORTING
*"     VALUE(ET_TAB) TYPE  TY_FLIGHTS
*"----------------------------------------------------------------------


    select * from sflight into table et_tab
where carrid = id_import-carrid.


ENDFUNCTION.
