CLASS lhc_ZGP_C_EXCEL_DATA DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zgp_c_excel_data RESULT result.

ENDCLASS.

CLASS lhc_ZGP_C_EXCEL_DATA IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
