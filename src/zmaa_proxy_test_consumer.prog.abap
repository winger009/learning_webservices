*&---------------------------------------------------------------------*
*& Report ZMAA_PROXY_TEST_CONSUMER
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMAA_PROXY_TEST_CONSUMER.


START-OF-SELECTION.

data: lr_proxy TYPE REF TO zpx_co_zmaa_webserv_def,
      input TYPE ZPX_ZMAA_SOAP_GET,
      output TYPE ZPX_ZMAA_SOAP_GETRESPONSE.

clear input.
input-id_import-carrid = 'AA'.
input-id_import-connid = '1'.
input-id_import-fldate = '2020-01-02'.
break developer.
CREATE OBJECT lr_proxy
     EXPORTING
            LOGICAL_PORT_NAME = 'ZPX_PORT'.

CALL METHOD lr_proxy->zmaa_soap_get
     EXPORTING
            input = input
     IMPORTING
            output = output.

clear input.
*loop at output-et_tab into data(ls).
*  write ls-carid.
*  endloop.
