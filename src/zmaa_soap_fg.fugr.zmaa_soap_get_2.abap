FUNCTION ZMAA_SOAP_GET_2.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(ID_IMPORT) TYPE  I
*"  EXPORTING
*"     VALUE(ED_TEXT) TYPE  STRING
*"----------------------------------------------------------------------

  if id_import > 5.
    ed_text = 'Wiecej niz 5'.
    else.
      ed_text = 'Mniej niz 5'.
      endif.


ENDFUNCTION.
