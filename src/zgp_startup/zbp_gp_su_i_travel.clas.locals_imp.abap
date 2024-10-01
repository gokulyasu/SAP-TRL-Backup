CLASS lhc__Travel DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR _Travel RESULT result.
    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR _travel RESULT result.

    METHODS createcustom FOR MODIFY
      IMPORTING keys FOR ACTION _travel~createcustom.

ENDCLASS.

CLASS lhc__Travel IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD CreateCustom.

data(test) = keys.
  ENDMETHOD.

ENDCLASS.
