CLASS zcl_xref1_xref3 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    "Consulta materiales por centro
    CLASS-METHODS: get_bp_by_externalreference
      IMPORTING VALUE(iv_partner) TYPE xblnr1
      EXPORTING VALUE(ev_partner) TYPE i_businesspartnertaxnumber-businesspartner.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_XREF1_XREF3 IMPLEMENTATION.


  METHOD get_bp_by_externalreference.
    SELECT SINGLE businesspartner
      FROM i_businesspartnertaxnumber
      WHERE bptaxnumber = @iv_partner
      INTO @ev_partner.
  ENDMETHOD.
ENDCLASS.
