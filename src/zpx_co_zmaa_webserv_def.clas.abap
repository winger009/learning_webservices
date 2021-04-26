class ZPX_CO_ZMAA_WEBSERV_DEF definition
  public
  inheriting from CL_PROXY_CLIENT
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !LOGICAL_PORT_NAME type PRX_LOGICAL_PORT_NAME optional
    raising
      CX_AI_SYSTEM_FAULT .
  methods ZMAA_SOAP_GET
    importing
      !INPUT type ZPX_ZMAA_SOAP_GET
    exporting
      !OUTPUT type ZPX_ZMAA_SOAP_GETRESPONSE
    raising
      CX_AI_SYSTEM_FAULT .
protected section.
private section.
ENDCLASS.



CLASS ZPX_CO_ZMAA_WEBSERV_DEF IMPLEMENTATION.


  method CONSTRUCTOR.

  super->constructor(
    class_name          = 'ZPX_CO_ZMAA_WEBSERV_DEF'
    logical_port_name   = logical_port_name
  ).

  endmethod.


  method ZMAA_SOAP_GET.

  data(lt_parmbind) = value abap_parmbind_tab(
    ( name = 'INPUT' kind = '0' value = ref #( INPUT ) )
    ( name = 'OUTPUT' kind = '1' value = ref #( OUTPUT ) )
  ).
  if_proxy_client~execute(
    exporting
      method_name = 'ZMAA_SOAP_GET'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.
ENDCLASS.
